const Lead = require("../models/leadsModel");

const getPendingLead = async(req,res) =>{
    try {
        const pendLead = await Lead.findById(req.params.id);
        if(!pendLead){
            return res.status(404).json({
                status: "Failed",
                data: {
                    Lead: "Lead not found"
                },
            });
        }
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: pendLead
            },
        });
    } catch (error) {
        return res.status(404).json({
            status: "Failed",
            data: {
                Lead: erorr.message
            },
        });
    }
};

const getAllPendingLeads = async(req,res) =>{

    const pendLead = await Lead.find({status:"Pending"});
    try{
        return res.status(200).json({
            status: "Success",
            data: {
                Lead: pendLead
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