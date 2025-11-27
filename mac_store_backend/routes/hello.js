// Import the Express module
const express = require("express");

// Create a router object
const router = express.Router();

// Define a GET route for /hello
router.get("/hello", (req, res) => {
    res.send("Hello world");
});

// Export the router so it can be used in other files
module.exports = router;