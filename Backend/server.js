const mongoose = require('mongoose');
const dotenv = require('dotenv');
const app = require('./app');

dotenv.config({path: '.env'});

mongoose.connect(process.env.DATABASE).then(() => {
    console.log("Mongoose connected");
}).catch((err) => {
    console.error('Dabase connection error', err);
});


const port = 3000;
app.listen(port, () => {
    console.log(`Server started running on port ${port}`);
});
