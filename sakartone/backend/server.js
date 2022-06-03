const express = require("express");
const mongoose = require("mongoose");
const cors = require("cors");
const app = express();
const path = require("path");
const userRoutes = require("./routes/user");

app.use(cors());
mongoose.set("debug", true);
mongoose
  .connect(
    "mongodb+srv://sakartone:root@cluster0.sq0an.mongodb.net/?retryWrites=true&w=majority",
    {
      useNewUrlParser: true,
      useUnifiedTopology: true
    }
  )
  .then(() => console.log("connexion ok !"));

app.use(express.static(path.join(__dirname, "public")));
app.use(express.json());

app.use('/api/user', userRoutes);


app.listen(80);
