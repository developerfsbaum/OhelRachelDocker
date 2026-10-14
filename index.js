const express = require('express');
const app = express();
 
app.get('/', (req, res) => {
  res.send('Hello from Docker!');
});
 
app.listen(1234, () => {
  console.log('Hello From Code');
});
