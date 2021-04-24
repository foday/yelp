require("dotenv").config();
const express = require("express");

const app = express();

// Get all Restaurants
app.get("/restaurants", (req, res) => {
    res.status(200).json({
        status: "success",
        data: {
            restaurant: ["pizza hut", "wendys"],
        },     
    });
}); 

// Get a Restaurant 
app.get("api/v1/restaurants/:id", (req, res) => {
    console.log(req);
});

console.log("test");

const port = process.env.PORT || 4000;
app.listen(port, () => {
    console.log('server is up and listening on port', port);
});