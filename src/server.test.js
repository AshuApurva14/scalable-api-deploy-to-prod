const request = require('supertest');
const app = require('./server'); // Assuming your server is exported from app.js

test('GET /api/v1 should respond with status 200', async () => {
    const response = await request(app).get('/api/v1');
    expect(response.statusCode).toBe(200);
});

test('GET /api/v1 should return JSON', async () => {
    const response = await request(app).get('/api/v1');
    expect(response.headers['content-type']).toEqual(expect.stringContaining('json'));
});