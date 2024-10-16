// Middleware to check if the user is authenticated
const isAuthenticated = (req, res, next) => {
  if (req.session.username) {
    console.log("validating the session ID");
    next(); // Call next to proceed to the next middleware
  } else {
    return res.redirect("/login");
  }
};

// Middleware to check if the user is an admin
const isAdmin = (req, res, next) => {
  if (req.session.role === "admin") {
    console.log("User is an admin !!");
    return next(); // Call next to proceed to the admin dashboard
  } else {
    console.log("User is not an admin !!");
    return next(); // Call next to proceed to the user dashboard
  }
};

module.exports = {
  isAuthenticated,
  isAdmin,
};
