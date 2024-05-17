// module.exports = {
//     mongoURI: "mongodb+srv://guriasoumi29:soumi@1234@cluster0.qfc0w3f.mongodb.net/"
// };


const mongoose = require('mongoose');
const connectDB = async () => {
  try {
    await mongoose.connect(process.env.MONGO_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log('MongoDB connected');
  } catch (error) {
    console.error('MongoDB connection error:', error.message);
    process.exit(1);
  }
};
module.exports = connectDB;
