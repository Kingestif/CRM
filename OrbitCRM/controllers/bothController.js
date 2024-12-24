const Contact = require("../models/contactsModel");
const Lead = require("../models/leadsModel");


const handleSearch = async (type, query, res) =>{
    const {name, email, phone, company} = query
    if(name){
        const searchLead = await Lead.findOne({ name: name });
        const searchContact = await Contact.findOne({name:name});

        if(!searchLead && !searchContact){
            return res.status(404).json({
                status: "Failed",
                data: {
                    Message: "Customer not found"
                },
            });

        }else if(searchLead){
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: searchLead
                },
            });
        }else{
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: searchContact
                },
            });
        }

    }else if(email){
        const searchLead = await Lead.findOne({ email: email });
        const searchContact = await Contact.findOne({email:email});

        if(!searchLead && !searchContact){
            return res.status(404).json({
                status: "Failed",
                data: {
                    Message: "Customer not found"
                },
            });

        }else if(searchLead){
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: searchLead
                },
            });
        }else{
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: searchContact
                },
            });
        }
    }else if(phone){
        const searchLead = await Lead.findOne({ phoneNo: phone });
        const searchContact = await Contact.findOne({phoneNo:phone});

        if(!searchLead && !searchContact){
            return res.status(404).json({
                status: "Failed",
                data: {
                    Message: "Customer not found"
                },
            });

        }else if(searchLead){
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: searchLead
                },
            });
        }else{
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: searchContact
                },
            });
        }
    }
    else if(company){
        const searchLead = await Lead.find({ company: company });
        const searchContact = await Contact.find({company:company});

        const combinedCustomer = [...searchLead, ...searchContact];

        if(combinedCustomer === 0){
            return res.status(404).json({
                status: "Failed",
                data: {
                    Message: "Customer not found"
                },
            });
        }

        return res.status(200).json({
            status: "Success",
            Customer: combinedCustomer
        });
    }

    return res.status(400).json({
        status: "Failed",
        Message: error.message
    });

}

const searchBoth = async(req,res) =>{
    try {
        return handleSearch("Contacts & Leads", req.query, res);
    } catch (error) {
        res.status(500).json({
            status:"Failed",
            data: {
                Message: error.message
            },
        });
    }
};


const getSingleCustomer = async(req,res) =>{
    try {
        const findContacts = await Contact.findById(req.params.id);
        const findLeads = await Lead.findById(req.params.id);

        if(!findContacts && !findLeads){
            return res.status(404).json({
                status: "Failed",
                data: {
                    Message: "Customer not found"
                },
            });
        }else if(findContacts){
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: findContacts
                },
            });
        }else{
            return res.status(200).json({
                status: "Success",
                data: {
                    Customer: findLeads
                },
            });
        }

    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Message: error.message
            },
        });
    }
    
};

const getAllCustomers = async (req, res) => {
    try {
        const [contacts, leads] = await Promise.all([
            Contact.find(),
            Lead.find()
        ]);

        const combinedUsers = {
            contacts,
            leads
        };

        return res.status(200).json({
            status: "Success",
            length: contacts.length + leads.length,
            data: {
                Customers: combinedUsers
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

module.exports = {
    searchBoth,
    getSingleCustomer,
    getAllCustomers
}