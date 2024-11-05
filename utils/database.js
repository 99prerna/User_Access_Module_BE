const { Sequelize } = require("sequelize");

// Option 3: Passing parameters separately (other dialects)
const sequelize = new Sequelize("UAM_DB", "admin", "Urm560037NJ#", {
  host: "database-1.cx8owea2kero.us-east-2.rds.amazonaws.com",
  dialect: "mysql",
});

// async function test_connection (){
// try {
//     await sequelize.authenticate();
//     console.log('Connection has been established successfully.');
//   } catch (error) {
//     console.error('Unable to connect to the database:', error);
//   }
// }
// test_connection();

module.exports = sequelize;

// export default sequelize;
