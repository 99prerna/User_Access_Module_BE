const { validateToken } = require("./authService");

function verifyUser(req, res, next) {
  const token = req.cookies?.session;
  if (!token) {
    return res.status(401).json({ message: "Unauthenticated" });
  }

  const user = Authentication.validateToken(token);
  if (!user) {
    res.clearCookie("session", {
      httpOnly: true,
      secure: false,
      sameSite: "Lax",
    });
    return res.status(401).json({ message: "Unauthenticated" });
  }

  req.user = user;
  return next();
}

module.exports = {
  verifyUser,
};
