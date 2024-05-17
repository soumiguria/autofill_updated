// // const express = require('express');
// // const multer = require('multer');
// // const { Document } = require('../models/document');
// // const { protect } = require('../middleware/authMiddleware');

// // const router = express.Router();
// // const upload = multer({ dest: 'uploads/' });

// // // Upload a document
// // router.post('/', protect, upload.single('document'), async (req, res) => {
// //   const { userId, documentName } = req.body;

// //   const newDocument = new Document({
// //     user: userId,
// //     name: documentName,
// //     path: req.file.path,
// //   });

// //   await newDocument.save();
// //   res.status(201).json(newDocument);
// // });

// // // Get all documents for a user
// // router.get('/:userId', protect, async (req, res) => {
// //   const documents = await Document.find({ user: req.params.userId });
// //   res.status(200).json(documents);
// // });

// // // Update a document
// // router.put('/:id', protect, async (req, res) => {
// //   const { documentName } = req.body;
// //   const updatedDocument = await Document.findByIdAndUpdate(
// //     req.params.id,
// //     { name: documentName },
// //     { new: true }
// //   );
// //   res.status(200).json(updatedDocument);
// // });

// // // Delete a document
// // router.delete('/:id', protect, async (req, res) => {
// //   await Document.findByIdAndDelete(req.params.id);
// //   res.status(200).json({ message: 'Document deleted' });
// // });

// // module.exports = router;


// // // const express = require('express');
// // // const multer = require('multer');
// // // const { Document } = require('../models/document');
// // // const { protect } = require('../middleware/authMiddleware');

// // // const router = express.Router();
// // // const upload = multer({ dest: 'uploads/' });

// // // // Error handling middleware for document upload
// // // const handleDocumentUploadError = (err, req, res, next) => {
// // //   if (err instanceof multer.MulterError) {
// // //     // Multer error occurred
// // //     if (err.code === 'LIMIT_FILE_SIZE') {
// // //       return res.status(400).json({ error: 'File size too large' });
// // //     }
// // //     // Handle other multer errors if needed
// // //   } else if (err) {
// // //     // Other errors occurred
// // //     return res.status(500).json({ error: 'Something went wrong' });
// // //   }
// // //   // If no errors, proceed to the next middleware
// // //   next();
// // // };

// // // // Upload a document
// // // router.post('/', protect, upload.single('document'), handleDocumentUploadError, async (req, res) => {
// // //   const { userId, documentName } = req.body;

// // //   const newDocument = new Document({
// // //     user: userId,
// // //     name: documentName,
// // //     path: req.file.path,
// // //   });

// // //   await newDocument.save();
// // //   res.status(201).json(newDocument);
// // // });

// // // // Get all documents for a user
// // // router.get('/:userId', protect, async (req, res) => {
// // //   const documents = await Document.find({ user: req.params.userId });
// // //   res.status(200).json(documents);
// // // });

// // // // Update a document
// // // router.put('/:id', protect, async (req, res) => {
// // //   const { documentName } = req.body;
// // //   const updatedDocument = await Document.findByIdAndUpdate(
// // //     req.params.id,
// // //     { name: documentName },
// // //     { new: true }
// // //   );
// // //   res.status(200).json(updatedDocument);
// // // });

// // // // Delete a document
// // // router.delete('/:id', protect, async (req, res) => {
// // //   await Document.findByIdAndDelete(req.params.id);
// // //   res.status(200).json({ message: 'Document deleted' });
// // // });

// // // module.exports = router;


// const express = require('express');
// const multer = require('multer');
// const { Document } = require('../models/document');
// const { protect } = require('../middleware/authMiddleware');

// const router = express.Router();
// const upload = multer({ dest: 'uploads/' });

// // Error handling middleware for document upload
// const handleDocumentUploadError = (err, req, res, next) => {
//   if (err instanceof multer.MulterError) {
//     if (err.code === 'LIMIT_FILE_SIZE') {
//       return res.status(400).json({ error: 'File size too large' });
//     }
//   } else if (err) {
//     return res.status(500).json({ error: 'Something went wrong' });
//   }
//   next();
// };

// // Upload a document
// router.post('/', protect, upload.single('document'), handleDocumentUploadError, async (req, res) => {
//   const { userId, documentName } = req.body;

//   const newDocument = new Document({
//     user: userId,
//     name: documentName,
//     path: req.file.path,
//   });

//   await newDocument.save();
//   res.status(201).json(newDocument);
// });

// // Get all documents for a user
// router.get('/:userId', protect, async (req, res) => {
//   const documents = await Document.find({ user: req.params.userId });
//   res.status(200).json(documents);
// });

// // Update a document
// router.put('/:id', protect, async (req, res) => {
//   const { documentName } = req.body;
//   const updatedDocument = await Document.findByIdAndUpdate(
//     req.params.id,
//     { name: documentName },
//     { new: true }
//   );
//   res.status(200).json(updatedDocument);
// });

// // Delete a document
// router.delete('/:id', protect, async (req, res) => {
//   await Document.findByIdAndDelete(req.params.id);
//   res.status(200).json({ message: 'Document deleted' });
// });

// module.exports = router;


const express = require('express');
const multer = require('multer');
const { Document } = require('../models/document');
const { protect } = require('../middleware/authMiddleware');

const router = express.Router();
const upload = multer({ dest: 'uploads/' });

// Error handling middleware for document upload
const handleDocumentUploadError = (err, req, res, next) => {
  if (err instanceof multer.MulterError) {
    if (err.code === 'LIMIT_FILE_SIZE') {
      return res.status(400).json({ error: 'File size too large' });
    }
  } else if (err) {
    return res.status(500).json({ error: 'Something went wrong' });
  }
  next();
};

// Upload a document
router.post('/', protect, upload.single('document'), handleDocumentUploadError, async (req, res) => {
  try {
    const { userId, documentName } = req.body;

    const newDocument = new Document({
      user: userId,
      name: documentName,
      path: req.file.path,
    });

    await newDocument.save();
    res.status(201).json(newDocument);
  } catch (error) {
    console.error('Error uploading document:', error);
    res.status(500).json({ error: 'Server error' });
  }
});

// Get all documents for a user
router.get('/:userId', protect, async (req, res) => {
  try {
    const documents = await Document.find({ user: req.params.userId });
    res.status(200).json(documents);
  } catch (error) {
    console.error('Error fetching documents:', error);
    res.status(500).json({ error: 'Server error' });
  }
});

// Update a document
router.put('/:id', protect, async (req, res) => {
  try {
    const { documentName } = req.body;
    const updatedDocument = await Document.findByIdAndUpdate(
      req.params.id,
      { name: documentName },
      { new: true }
    );
    if (!updatedDocument) {
      return res.status(404).json({ error: 'Document not found' });
    }
    res.status(200).json(updatedDocument);
  } catch (error) {
    console.error('Error updating document:', error);
    res.status(500).json({ error: 'Server error' });
  }
});

// Delete a document
router.delete('/:id', protect, async (req, res) => {
  try {
    const deletedDocument = await Document.findByIdAndDelete(req.params.id);
    if (!deletedDocument) {
      return res.status(404).json({ error: 'Document not found' });
    }
    res.status(200).json({ message: 'Document deleted' });
  } catch (error) {
    console.error('Error deleting document:', error);
    res.status(500).json({ error: 'Server error' });
  }
});

module.exports = router;
