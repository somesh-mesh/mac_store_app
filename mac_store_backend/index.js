// Import the Express module
const express = require('express');
const mongoose = require("mongoose");

// Import the route file
const helloRoute = require('./routes/hello');

// Set the port number for the server
const PORT = 3000;

// Create an Express application
const app = express();

const DB = "mongodb+srv://meshsom543_db_user:aw7yCjS5ka2XuYyc@cluster0.xhw8ws2.mongodb.net/";

// Middleware (important: add JSON parser if you plan to send JSON)
app.use(express.json());

// Use routes
app.use('/api', helloRoute); 
// OR app.use(helloRoute); → works only if the file exports a router properly

mongoose.connect(DB)
  .then(() => {
    console.log("MongoDB connected");
  })
  .catch((err) => console.log(err));

// Start the server
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server is running on port ${PORT}`);
});