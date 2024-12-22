const mongoose = require('mongoose');
const dotenv = require('dotenv');
const app = require('./app');

dotenv.config({path: '.env'});

mongoose.connect(process.env.DATABASE).then(() => {
    console.log("Mongoose connected");
}).catch((err) => {
    console.error('Dabase connection error', err);
});

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
        unique: true,
        default: "UNKNOWN"
    },
    company: {
        type: String,
        default: "UNKNOWN"
    }
});

const Contact = mongoose.model('Contact', contactSchema);

const testContact = new Contact({
    name: "user2",
    phoneNo: "09446",
    // email: "ezy@gmail.com",
    // company: "amazone"
});

testContact.save().then(doc => {
    console.log(doc);
}).catch(err => {
    console.log("ERROR", err);
});

const port = 3000;
app.listen(port, () => {
    console.log(`Server started running on port ${port}`);
});
