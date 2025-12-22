const express = require("express");
const studentRouter = require("./routes/student");

const app = express();
app.use(express.json());

app.use("/student", studentRouter);

app.listen(4004, () => {
    console.log("Server started on port 4004");
});
