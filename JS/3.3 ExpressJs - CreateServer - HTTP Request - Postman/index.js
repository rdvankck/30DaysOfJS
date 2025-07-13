import express from "express";
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Home Page");
});
// About Page
app.get("/about", (req, res) => {
  res.send("<h1> About Me! </h1> <p> My Name is Ridvan</p>");
});
// Contact Page
app.get("/contact", (req, res) => {
  res.send("<h1> Contact Me! </h1> <p> Email - rk@gmail.com</p>");
});


// Postman Things -> Put, Delete, Post etc.
app.post("/register", (req, res) => {
  res.sendStatus(201);
});

app.put("/user/ridvan", (req, res) => {
  res.sendStatus(200);
});

app.patch("/user/ridvan", (req, res) => {
  res.sendStatus(200);
});

app.delete("/user/ridvan", (req, res) => {
  res.sendStatus(200);
});

app.listen(port, () => {
  console.log(`Server running on port ${port}.`);
});
