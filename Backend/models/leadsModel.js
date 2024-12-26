const mongoose = require('mongoose');

const LeadSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [true, "A Lead must have a name"],
    },
    phoneNo: {
        type: String,
        required: [true, "A Lead must have a phone number"],
        unique: true
    },
    email: {
        type: String,
        sparse: true,
        unique: true
    },
    company: {
        type: String,
    },
    status: {
        type: String,
        default: "Pending"
    }
});

const Lead = mongoose.model('Lead', LeadSchema);

module.exports = Lead;
