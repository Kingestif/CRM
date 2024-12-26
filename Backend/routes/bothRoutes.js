const express = require('express')
const {searchBoth, getSingleCustomer, getAllCustomers} = require('../controllers/bothController')
const router = express.Router();

router.route('/search').get(searchBoth)
router.route('/').get(getAllCustomers)
router.route('/:id').get(getSingleCustomer)


module.exports = router; 
