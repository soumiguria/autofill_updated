const mongoose = require('mongoose');

const formSchema = new mongoose.Schema({
  formName: { type: String, required: true },
  requiredDocuments: [String],
  filledData: mongoose.Schema.Types.Mixed,
  user: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
});

module.exports = mongoose.model('Form', formSchema);
