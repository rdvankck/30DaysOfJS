import express from "express";

const app = express();
const port = 3000;

app.get("/", (req, res) => {
    const today = new Date();

    const day = today.getDay();

    let type = "a weekday!";
    let advice = "time for work";

    if (day === 0 || day === 6) {
        type = "weekend";
        advice = "time for rest";
    }

    res.render("index.ejs", {
        dayType: type,
        advice: advice,
    });
});

app.listen(port, () => {
    console.log(`Listening on port ${port}`);
});