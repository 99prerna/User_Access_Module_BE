const { DataTypes, useInflection } = require("sequelize");
// const sequelize = new Sequelize('mysql::memory:');

const sequelize = require("../utils/database");

const User = sequelize.define("User", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  firstName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  lastName: {
    type: DataTypes.STRING,
  },
  username: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  role: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  mail: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  createdBy: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

// // `sequelize.define` also returns the model
// User.create({
//   firstName: "Nikhil",
//   lastName: "Joshi",
//   username: "nikhiljoshi7713",
//   password: "nothing",
//   role: "HR",
//   mail: "helloworld@gmail.com",
//   createdBy: "admin",
// });
// console.log(User === sequelize.models.User); // true

module.exports = User;
