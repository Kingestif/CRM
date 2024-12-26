const Lead = require("../models/leadsModel");

const getAllLeads = async(req,res) =>{
    const {status} = req.query;

    try{
        const requestedLeads = await Lead.find({status:status});
        if(status === "Pending" || status === "Approved" || status === "Rejected"){
            return res.status(200).json({
                status: "Success",
                length: requestedLeads.length,
                data: {
                    Lead: requestedLeads
                },
            });
        }

        const allLeads = await Lead.find();

        return res.status(200).json({
            status: "Success",
            length: allLeads.length,
            data: {
                Lead: allLeads,
            },
        });

    } catch (error){
        res.status(404).json({
            status: "Failure",
            data: {
                Lead: error.message || "An error occurred while fetching leads"
            },
        });
    }
};

const getLead = async(req,res) =>{

    try {
        const oneLead = await Lead.findById(req.params.id);

        if(!oneLead){
            return res.status(404).json({
                status: "Failure",
                data: {
                    Lead: "Lead not found"
                },
            });
        }

        res.status(200).json({
            status: "Success",
            data: {
                Lead: oneLead
            },
        });
    } catch (error) {
        res.status(404).json({
            status: "Failure",
            data: {
                Lead: "Failed to get a lead"
            },
        });
    }
};

const createLead = async(req,res) =>{
    try {
        const newLead = await Lead.create(req.body);

        res.status(201).json({
            status: "Success",
            data: {
                Lead: newLead
            },
        });
        
    } catch (error) {
        res.status(400).json({
            status: "Failed to Create a Lead",
            data: {
                Message: error
            },
        }); 
    }
};

const updateLead = async(req,res) =>{
    try {
        const updLead = await Lead.findByIdAndUpdate(req.params.id, req.body, {
            new: true,
            runValidators: true
        });

        res.status(200).json({
            status: "Success",
            data: {
                Lead: updLead
            },
        });
        
    } catch (error) {
        res.status(500).json({
            status: "Failed",
            data: {
                Lead: error.message || "Failed to update Lead"
            },
        });
    }
};

const deleteLead = async(req,res) =>{
    try {
        await Lead.findByIdAndDelete(req.params.id)
        res.status(204).json({
            status: "Success",
            data: {
                Lead: "Deleted Lead"
            },
        });
        
    } catch (error) {
        res.status(500).json({
            status: "Failed",
            data: {
                Lead: "Failed to Deleted Lead"
            },
        });
    }
};

// ---------------------------Search

const handleSearch = async (type, query, res) =>{
    try {
        const {name, email, phone, company} = query
        if(name){
            const searchLead = await Lead.findOne({ name: name });
            if(!searchLead){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Lead not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Lead: searchLead
                },
            });
    
        }else if(email){
            const searchLead = await Lead.findOne({ email: email });
            if(!searchLead){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Lead not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Lead: searchLead
                },
            });
    
        }else if(phone){
            const searchLead = await Lead.findOne({ phoneNo: phone });
            if(!searchLead){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Lead not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Lead: searchLead
                },
            });
    
        }else if(company){
            const searchLead = await Lead.find({ company: company });
            if(searchLead.length == 0){
                return res.status(404).json({
                    status: "Failure",
                    data: {
                        Message: "Lead not found"
                    },
                });
            }
    
            return res.status(200).json({
                status: "Success",
                data: {
                    Lead: searchLead
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