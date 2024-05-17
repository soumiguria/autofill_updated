const express = require('express');
const { fillForm, getForm } = require('../controllers/formController');
const { protect } = require('../middleware/authMiddleware');
const router = express.Router();
const multer = require('multer');
const upload = multer({ dest: 'uploads/' });

router.post('/fill', protect, upload.array('documents'), fillForm);
// router.post('/fill', protect, fillForm);
// router.post('/upload', protect, upload.array('documents'), fillForm);
router.get('/:id', protect, getForm);

module.exports = router;
