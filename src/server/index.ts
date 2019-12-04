import express from "express";

const app: express.Application = express();
const port = process.env.PORT || "8080";
app.listen(port, (error) => {
    if (error) {
        console.error(`Error on port ${port}`)
    }
});

app.get("/", (req, res) => {
    res.send("test");
});
