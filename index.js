const express = require("express");

const app = express();

app.get("/hello", (req, res) => {
  res.send("test");
});

const listener = app.listen(process.PORT || 5000, () => {
  console.log("listening on " + listener.address().port);
});
