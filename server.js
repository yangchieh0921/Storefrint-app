const express = require("express");
const app = express();
const path = require('path');
const port = process.env.PORT || 5050;

// use the API route file to handle API routes
app.use("/api", require("./routes/api"));
app.use(express.static(path.join(__dirname, '/')))
app.set('views', path.join(__dirname, 'views'));
// run the app at the PORT
app.listen(port, () => {
    console.log(`server is running on ${port}`);
})