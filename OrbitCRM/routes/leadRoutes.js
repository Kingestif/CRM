const express = require('express')
const {getAllLeads, getLead, createLead, updateLead, deleteLead, searchLead} = require('../controllers/leadController')
const router = express.Router();

router.route('/search').get(searchLead)
router.route('/').get(getAllLeads).post(createLead)
router.route('/:id').get(getLead).patch(updateLead).delete(deleteLead)

module.exports = router; 


