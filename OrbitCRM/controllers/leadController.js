const getAllLeads = async(req,res) =>{
    const {status} = req.query;

    try{
        if(status === "Pending"){
            return res.status(200).json({
                status: "Success",
                // requestTime:req.requestTime,
                data: {
                    Lead: "Get Pending Leads"
                },
            });
        }else if(status === "Approved"){
            return res.status(200).json({
                status: "Success",
                data: {
                    Lead: "Get Approved Leads"
                },
            });
        }else if(status === "Rejected"){
            return res.status(200).json({
                status: "Success",
                data: {
                    Lead: "Get Rejected Leads"
                },
            });
        }

        return res.status(200).json({
            status: "Success",
            data: {
                Lead: "Get All Leads",
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

const getLead = async(req,res) =>{
    try {
        res.status(200).json({
            status: "Success",
            data: {
                Lead: "Get Single Lead"
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

const createLead = async(req,res) =>{
    try {
        res.status(201).json({
            status: "Success",
            data: {
                Lead: "Created lead"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "Failed to Created lead"
            },
        }); 
    }
};

const updateLead = async(req,res) =>{
    try {
        res.status(200).json({
            status: "Success",
            data: {
                Lead: "Updated Lead"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "Failed to Updated Lead"
            },
        });
    }
};

const deleteLead = async(req,res) =>{
    try {
        res.status(204).json({
            status: "Success",
            data: {
                Lead: "Deleted Lead"
            },
        });
        
    } catch (error) {
        res.status(404).json({
            status: "Failed",
            data: {
                Lead: "Failed to Deleted Lead"
            },
        });
    }
    
};

// ---------------------------Search

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

const searchLead = async(req,res) =>{

    try {
        return handleSearch("Leads", req.query, res);
    } catch (error) {
        res.status(500).json({
            status:"Failed",
            data: {
                Lead: "An unexpected error occurred while searching for leads."
            },
        });
    }
};

module.exports = {
    getAllLeads,
    getLead,
    createLead,
    updateLead,
    deleteLead,
    searchLead
}