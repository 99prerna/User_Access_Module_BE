const bcrypt = require("bcrypt");
const User = require("../models/user");
const session = require("express-session");
const jwt = require("jsonwebtoken");
const { generateAccessToken } = require("../middleware/authService");

const registerUser = async (req, res, next) => {
  const { firstName, lastName, username, password, role, mail, createdBy } =
    req.body;

  try {
    // Hash the password asynchronously
    const hashedPassword = await bcrypt.hash(password, 12);

    // Create new user with hashed password
    const user = new User({
      firstName,
      lastName,
      username,
      password: hashedPassword,
      role,
      mail,
      createdBy,
    });

    // Save user to database
    const resp = await user.save();
    console.log(resp, "User was saved to the database!");
    res.status(201).json({ message: "User created successfully!" });
  } catch (error) {
    console.error("Error during user registration:", error);
    return res.status(500).json({
      message: "An error occurred during registration",
    });
  }
};

const loginUser = async (req, res) => {
  const { username, password } = req.body;

  try {
    const user = await User.findOne({
      attributes: ["username", "password", "role"],
      where: {
        username: username,
      },
    });

    if (!user) {
      console.log("user nt found !!!!");
      return res.status(401).json({ message: "Invalid username or password" });
    }

    const match = await bcrypt.compare(password, user.password);

    if (!match) {
      return res.status(401).json({ message: "Invalid username or password" });
    }
    // generating token

    const token = generateAccessToken(user);

    // sending token to frontend
    res.cookie("session", token);

    // Send redirection URL to Dashborad of admin or user
    console.log("user ko sahi message dene");
    return res
      .status(200)
      .json({ message: "Login Success!!", role: user.role });
  } catch (error) {
    console.error("Error during login: ", error);
    return res.status(401).json({ message: "Unauthenticated User" });
  }
};

module.exports = {
  registerUser,
  loginUser,
};
