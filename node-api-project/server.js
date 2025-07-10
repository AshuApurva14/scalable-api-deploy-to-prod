const express = require('express');
const app = express();
const port = 5000;

// Middleware to parse JSON requests
app.use(express.json());

// Basic route for nodejs server 
app.get('/', (req, res) => {
  res.status(200).json({ status: 'Node server is running' });
});

// Basic route for health check
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'API is running' });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});