const express = require("express");
const handlebar = require("express-handlebars");
const app = express();

const PORT = process.env.PORT || 7777;
var routes = require("./controllers/burger_controller");

app.use(express.static("public"));

app.use(express.urlencoded({
    extended: true
}));
app.use(express.json());

app.engine("handlebars", handlebar({
    defaultLayout: "main"
}));
app.set("view engine", "handlebars");

app.use(routes);

app.listen(PORT, function () {
    console.log("PORT: " + PORT);
});