const getPendingLead = async(req,res) =>{
    try {
        res.status(200).json({
            status: "Success",
            data: {
                Lead: "Get Single Pending Lead"
            },
        });
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "Failed to get a lead"
            },
        });
    }
    
};

const getAllPendingLeads = async(req,res) =>{

    try{
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: "Get All Pending Leads"
            },
        });

    } catch (error){
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "An error occurred while fetching leads"
            },
        });
    }
};



const updatePendingLead = async(req,res) =>{
    try {
        res.status(200).json({
            status: "Success",
            data: {
                Lead: "Updated Pending Lead"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "Failed to Update Pending Lead"
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

const searchPendingLead = async(req,res) =>{

    try {
        return handleSearch("Pending Leads", req.query, res);
    } catch (error) {
        res.status(500).json({
            status:"Failed",
            data: {
                Lead: "An unexpected error occurred while searching for Pending Leads."
            },
        });
    }
};

module.exports = {
    getPendingLead,
    getAllPendingLeads,
    updatePendingLead,
    searchPendingLead

}