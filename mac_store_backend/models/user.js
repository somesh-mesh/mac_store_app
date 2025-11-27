const mongoose = require("mongoose");

// Create a schema (structure) for how a User will look in the database
const userSchema = mongoose.Schema({
  
  // User's full name
  fullName: {
    type: String,
    required: true,   // fullName must be provided
    trim: true,       // removes extra spaces
  },

  // User's email
  email: {
    type: String,
    required: true,   // email must be provided
    trim: true,
    validate: {
      // Check if email format is valid
      validator: (value) => {
        const result = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return result.test(value); // true means valid email
      },
      message: "Please enter a valid email address", // error message if email is wrong
    },
  },

  // User's state (optional)
  state: {
    type: String,
    default: "",  // empty by default
  },

  // User's city (optional)
  city: {
    type: String,
    default: "",
  },

  // User's locality (optional)
  locality: {
    type: String,
    default: "",
  },

  // User's password
  password: {
    type: String,
    required: true,  // password must be provided
    validate: {
      // Check if password has at least 8 characters
      validator: (value) => {
        return value.length >= 8;
      },
      message: "Password must be at least 8 characters long",
    },
    // trim: true  // You can enable this if you want to remove spaces around passwords
  },
});

// Create a model (User collection in MongoDB)
const User = mongoose.model("User", userSchema);

// Export so it can be used in other files
module.exports = User;