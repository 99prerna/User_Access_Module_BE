const express = require("express");
const { loginUser, registerUser } = require("../controllers/userContorller");
const router = express.Router(); // Use express.Router() instead of app.Router()
const { verifyUser } = require("../middleware/isAuth");

// User Registration Route
router.post("/registerUser", verifyUser, registerUser);

// User Login Route
router.post("/loginUser", loginUser);

// Protected route for regular authenticated users
router.get("/user/dashboard", (req, res) => {
  res.json({ message: `Welcome ${req.session.username}, you are logged in!` });
});

// Protected route for admins
router.get("/admin/dashboard", (req, res) => {
  res.json({ message: `Welcome Admin ${req.session.username}!` });
});

// Add more routes as needed, for example, to log out the user
router.post("/logout", (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      return res.status(500).json({ message: "Could not log out" });
    }
    res.redirect("/login");
  });
});

// Export the router
module.exports = router;
