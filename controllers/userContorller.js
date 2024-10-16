const bcrypt = require("bcrypt");
const User = require("../models/user");
const session = require("express-session");

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

const loginUser = async (req, res, next) => {
  const { username, password } = req.body;

  try {
    const user = await User.findOne({
      attributes: ["username", "password", "role"],
      where: {
        username: username,
      },
    });

    if (!user) {
      return res.status(401).json({ message: "Invalid username or password" });
    }

    const match = await bcrypt.compare(password, user.password);

    if (match) {
      // Set session cookies
      req.session.username = user.username;
      req.session.role = user.role;

      // Send redirection URL to Dashborad of admin or user
      const redirectUrl =
        user.role === "admin" ? "/admin/Dashboard" : "/user/Dashboard";
      return res.json({ success: true, redirectUrl });
    }
  } catch (error) {
    console.error("Error during login: ", error);
    return res.status(500).json({ message: "An error occurred during login" });
  }
};

module.exports = {
  registerUser,
  loginUser,
};
