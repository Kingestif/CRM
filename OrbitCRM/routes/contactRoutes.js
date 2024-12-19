const express = require('express')
const {getAllContacts, getContact, addContact, updateContact, deleteContact, searchContact} = require('../controllers/contactController')
const router = express.Router();

router.route('/search').get(searchContact)
router.route('/').get(getAllContacts).post(addContact)
router.route('/:id').get(getContact).patch(updateContact).delete(deleteContact)


module.exports = router; 