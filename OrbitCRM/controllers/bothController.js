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

const searchBoth = async(req,res) =>{
    try {
        return handleSearch("Contacts & Leads", req.query, res);
    } catch (error) {
        res.status(500).json({
            status:"Failed",
            data: {
                Lead: "An unexpected error occurred while searching for Contacts & Leads."
            },
        });
    }
};


const getSingleCustomer = async(req,res) =>{
    try {
        res.status(200).json({
            status: "Success",
            data: {
                Lead: "Get Single Customer"
            },
        });
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "Failed to get a Customer"
            },
        });
    }
    
};

const getAllCustomers = async (req, res) => {
    try {
        res.status(200).json({
            status: "Success",
            data: {
                contact: "All Customers"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                contact: "Failed to Get All Customers"
            },
        });
        
    }
};

module.exports = {
    searchBoth,
    getSingleCustomer,
    getAllCustomers
}