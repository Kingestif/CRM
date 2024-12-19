const getAllContacts = async (req, res) => {
    try {
        res.status(200).json({
            status: "Success",
            // requestTime: req.requestTime,
            data: {
                contact: "All contacts"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                contact: "Failed to Get All contacts"
            },
        });
        
    }
    
    
};

const getContact = async (req, res) => {
    try {
        res.status(200).json({
            status: "Success",
            data: {
                contact: "Single Contact"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                contact: "Failed to Get Single Contact"
            },
        });
        
    }
    
};

const addContact = async(req,res) => {
    try {
        res.status(201).json({
            status: "Success",
            data: {
                contact: "Added Contact"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                contact: "Failed to Add Contact"
            },
        });
    }
    
};

const updateContact = async(req,res) => {
    try {
        res.status(200).json({
            status: "Success",
            requestTime: req.requestTime,
            data: {
                contact: "Updated Contact"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                contact: "Failed to Updated Contact"
            },
        });
    }
};

const deleteContact = async(req,res) =>{
    try {
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


const handleSearch = (type, query, res) =>{
    const {name, email, phone, company} = query
    if(name){
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: `Search ${type} by Name`
            },
        });
    }else if(email){
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: `Search ${type} by Email`
            },
        });
    }else if(phone){
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: `Search ${type} by Phone`
            },
        });
    }else if(company){
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: `Search ${type} by Company`
            },
        });
    }

    return res.status(400).json({
        status: "Failed",
        message: `Invalid or missing search parameters. Provide email, name, phone, or company for ${type}.`,
    });

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
