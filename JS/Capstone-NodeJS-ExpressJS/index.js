import express from "express";
import bodyParser from "body-parser";


let posts = [];

const app = express();
const port = 3000;

app.use(express.static("public"));


app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
    res.render("index.ejs", {
      posts: posts,
    });
  });

  app.get("/new", (req, res) => {
    res.render("new.ejs");
  });



  app.post("/create", (req, res) => {
      const newPost = {
          id: posts.length + 1,
          title: req.body.postTitle,
       
          content: req.body.postContent, 
      };
      posts.push(newPost);
      res.redirect("/");
  });


  app.post("/delete/:id", (req, res) => {
    const postId = parseInt(req.params.id);
    const postIndex = posts.findIndex(p => p.id === postId); 
    
    if (postIndex > -1) {
       
        posts.splice(postIndex, 1); 
    }
    
    res.redirect("/");
});
  
    

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });
  