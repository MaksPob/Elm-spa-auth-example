const express = require('express');
const app = express();
const cors = require('cors')

app.use(cors());

const token = 'sha512fhwfhwfwoifbgwoqgfwqogycv';

let userSchema = {
    name: undefined,
    password: undefined
};

app.get('/home', (req, res) => {
  res.json(userSchema);
});

app.post('/registration', (req, res) => {
    console.log(111, req)
    res.json({token: token});
  });

app.listen(9000, () => {
  console.log('Example app listening on port 9000!');
});