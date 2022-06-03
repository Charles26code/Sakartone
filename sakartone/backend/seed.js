const mongoose = require("mongoose");
const Profile = require("./models/user");

// Pour utiliser les images depuis le backend
// photo: 'http://localhost/assets/images/olivia.jpg',

mongoose
  .connect(
    "mongodb+srv://sakartone:root@cluster0.sq0an.mongodb.net/?retryWrites=true&w=majority",
    {
      useNewUrlParser: true
    }
  )
  .then(() => {
    Promise.all([
      new User({
        username: 'Charles',
        email: 'azerty@gmail.com',
        password: 'azerty',
      }).save(),

    ]).then(res => {
      console.log("data installed");
      mongoose.connection.close();
    });
  });
