const express = require('express');
const app = express();
const port = 5000;

// Middleware to parse JSON requests
app.use(express.json());

// Basic route for node server
app.get('/api/v1', (req, res) => {
  res.status(200).json({ status: 'Node server is running' });
});

// Basic route for health check
app.get('/api/v1/health', (req, res) => {
  res.status(200).json({ status: 'API is running' });
});

app.use((req, res, next) => {
  console.log(`${req.method} request for ${req.url}`);
  next();
});

if (require.main === module) {
  app.listen(port, () => console.log('Server is running on http://localhost:5000/api/v1/'));
}


module.exports = app;