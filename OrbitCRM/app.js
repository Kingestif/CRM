const express = require('express');
const { stat } = require('fs');
const app = express();
const contactRouter = require('./routes/contactRoutes')
const leadRouter = require('./routes/leadRoutes')
const adminRouter = require('./routes/adminRouters')


app.use(express.json()); 
const morgan = require('morgan');
app.use(morgan('dev'));    

app.use((req,res,next) => {
    req.requestTime = new Date().toISOString();
    next();
});

// routes
app.use('/api/v1/contacts', contactRouter);
app.use('/api/v1/leads', leadRouter);
app.use('/api/v1/admin', adminRouter);


module.exports = app;







