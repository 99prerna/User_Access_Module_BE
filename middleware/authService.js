const JWT = require("jsonwebtoken");

const { sign, verify } = JWT;
const secretKey = "nikhilisahendsome";

function generateAccessToken(user) {
  const payload = {
    username: user.username,
    role: user.role,
  };
  const token = sign(payload, secretKey, { expiresIn: "1h" });
  return token;
}

const validateToken = (token) => {
  let user;
  try {
    user = verify(token, secretKey);
  } catch (err) {
    console.log(err);
  }
  return user;
};

module.exports = {
  generateAccessToken,
  validateToken,
};
