const Form = require('../models/form');
const documentService = require('../services/documentServices');
const otpService = require('../services/otpService');

const fillForm = async (req, res) => {
    const { formName, userId } = req.body;
    const documents = req.files;
    const filledData = {};
  
    for (const doc of documents) {
      const processedData = await documentService.processDocument(doc);
      Object.assign(filledData, processedData);
    }
  
    const newForm = new Form({
      formName,
      requiredDocuments: documents.map((doc) => doc.originalname),
      filledData,
      user: userId,
    });
  
    await newForm.save();
    res.status(201).json(newForm);
  };  

const getForm = async (req, res) => {
  const form = await Form.findById(req.params.id).populate('user');
  res.status(200).json(form);
};

module.exports = { fillForm, getForm };
