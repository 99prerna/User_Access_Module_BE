const express = require("express");
const bodyParser = require("body-parser");
const userRouter = require("./routes/userRouter");
const cookieSession = require("cookie-session");

const app = express();
app.use(express.json());
app.use(bodyParser.json());

// Request cookie session
app.use(
  cookieSession({
    name: "session",
    keys: ["yourSecretKey"], // Replace with a strong secret key
    maxAge: 24 * 60 * 60 * 1000, // 24 hours
  })
);

// Request headers configuration
app.use((req, res, next) => {
  res.header("Access-Control-Allow-Origin", "http://localhost:5173"); // Allow requests from this origin
  res.header("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE"); // Allow these methods
  res.header("Access-Control-Allow-Headers", "Content-Type, Authorization"); // Allow these headers
  res.header("Access-Control-Allow-Credentials", "true"); // Allow credentials (optional)

  // Handle preflight (OPTIONS) requests
  if (req.method === "OPTIONS") {
    return res.status(200).end();
  }

  next();
});

app.use(userRouter);

app.listen(5055, () => {
  console.log("Server is running on http://localhost:5055");
});
