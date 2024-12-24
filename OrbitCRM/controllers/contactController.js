const Contact = require('../models/contactsModel');

const getAllContacts = async (req, res) => {
    try {
        const allContacts = await Contact.find();

        res.status(200).json({
            status: "Success",
            length: allContacts.length,
            data: {
                contact: allContacts
            },
        });
        
    } catch (error) {
        res.status(500).json({
            status: "Failure",
            data: {
                Message: error.message
            },
        });
    }
};

const getContact = async (req, res) => {
    try {
        const oneContact = await Contact.findById(req.params.id);
        if(!oneContact){
            return res.status(404).json({
                status: "Failure",
                data: {
                    Message: "Contact not found"
                },
            });
        }

        res.status(200).json({
            status: "Success",
            data: {
                contact: oneContact
            },
        });

    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Message: error.message
            },
        });
    }
    
};

const addContact = async(req,res) => {
    try {
        const newContact = await Contact.create(req.body);
        res.status(201).json({
            status: "Success",
            data: {
                contact: newContact
            },
        });
        
    } catch (error) {
        res.status(400).json({
            status: "Failed to Create a Lead",
            data: {
                Message: error.message
            },
        }); 
    }
};

const updateContact = async(req,res) => {
    try {
        const updContact = await Contact.findByIdAndUpdate(req.params.id, req.body, {
            new: true,
            runValidators: true
        });

        res.status(200).json({
            status: "Success",
            data: {
                contact: updContact
            },
        });
        
    } catch (error) {
        res.status(500).json({
            status: "Failed",
            data: {
                contact: "Failed to Updated Contact"
            },
        });
    }
};

const deleteContact = async(req,res) =>{
    try {
        await Contact.findByIdAndDelete(req.params.id)
        res.status(204).json({
            status: "Success",
            data:{
                contact:"Deleted Contact"
            },
        });
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data:{
                contact:"Failed to Deleted Contact"
            },
        });
    }
};


const handleSearch = async (type, query, res) =>{
    try {
        const {name, email, phone, company} = query
        if(name){
            const searchContact = await Contact.findOne({ name: name });
            if(!searchContact){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Contact not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Contact: searchContact
                },
            });
    
        }else if(email){
            const searchContact = await Contact.findOne({ email: email });
            if(!searchContact){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Contact not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Contact: searchContact
                },
            });
    
        }else if(phone){
            const searchContact = await Contact.findOne({ phoneNo: phone });
            if(!searchContact){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Contact not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Contact: searchContact
                },
            });
    
        }else if(company){
            const searchContact = await Contact.find({ company: company });
            if(searchContact.length == 0){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Contact not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Contact: searchContact
                },
            });
        }
        
    } catch (error) {
        return res.status(400).json({
            status: "Failed",
            message: `Invalid or missing search parameters. Provide email, name, phone, or company for ${type}.`,
        }); 
    }

}


const searchContact = async(req,res) =>{
    try {
        return handleSearch("Contacts", req.query, res);
    } catch (error) {
        res.status(500).json({
            status:"Failed",
            data: {
                Lead: "An unexpected error occurred while searching for Contacts."
            },
        });
    }
};


module.exports = {
    getAllContacts,
    getContact,
    addContact,
    updateContact,
    deleteContact,
    searchContact
}
