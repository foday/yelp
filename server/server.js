require("dotenv").config();
const express = require("express");

const app = express();

app.get("/restaurants", (req, res) => {
    res.status(404).json({
        status: "success", 
        restaurant: "pizza hut",
    });
}); 

console.log("test");

const port = process.env.PORT || 4000;
app.listen(port, () => {
    console.log('server is up and listening on port', port);
});