const mongoose = require('mongoose');

const contactSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [true, "A contact must have a name"],
    },
    phoneNo: {
        type: String,
        required: [true, "A contact must have a phone number"],
        unique: true
    },
    email: {
        type: String,
        sparse: true,
        unique: true
    },
    company: {
        type: String,
    }
});

const Contact = mongoose.model('Contact', contactSchema);

module.exports = Contact;
