const express = require('express')
const {getPendingLead, getAllPendingLeads, updatePendingLead, searchPendingLead} = require("../controllers/adminController")
const router = express.Router();

router.route('/search').get(searchPendingLead)
router.route('/').get(getAllPendingLeads)
router.route('/:id').get(getPendingLead).patch(updatePendingLead)

module.exports = router;