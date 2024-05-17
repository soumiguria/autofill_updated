const Tesseract = require('tesseract.js');
const { PDFDocument } = require('pdf-lib');

const processDocument = async (file) => {
  // Example logic to extract text from a PDF or image
  const text = await Tesseract.recognize(file.path, 'eng');
  return { extractedText: text.data.text };
};

module.exports = { processDocument };
