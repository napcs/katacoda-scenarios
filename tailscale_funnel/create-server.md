# Create a basic Node.js HTTP server

You'll start by building a simple HTTP server that demonstrates the kind of application you might want to share during development. This server will have multiple endpoints to showcase different functionality.

Create a new directory for your project and navigate to it:

```bash
mkdir tailscale-funnel-demo
cd tailscale-funnel-demo
```{{ execute }}

Initialize a new Node.js project with default settings:

```
npm init -y
```{{ execute }}

Install [Express](https://expressjs.com/):

```
npm install express
```{{ execute }}

Create the main server file:

```
touch server.js
```{{ execute }}

Add the following code:

```javascript
const express = require('express');
const app = express();
const PORT = 3000;

app.use(express.json());

app.get('/', (req, res) => {
  res.json({
    message: 'Welcome to the Tailscale Funnel Demo Server!',
    timestamp: new Date().toISOString(),
    endpoints: [
      'GET / - This welcome message',
      'GET /api/status - Server status information',
      'POST /api/echo - Echo back the request body'
    ]
  });
});

app.get('/api/status', (req, res) => {
  res.json({
    status: 'running',
    uptime: process.uptime(),
    memory: process.memoryUsage(),
    version: process.version
  });
});

app.post('/api/echo', (req, res) => {
  res.json({
    message: 'Echo endpoint received your data',
    receivedData: req.body,
    timestamp: new Date().toISOString()
  });
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
  console.log('Press Ctrl+C to stop the server');
});
```

Start the server:

```
node server.js
```{{ execute }}


The server displays a message confirming that it's running:

```
Server running at http://localhost:3000
Press Ctrl+C to stop the server
```

Switch to a new terminal window and test the server with `curl`:

```
curl http://localhost:3000
```{{ execute }}


The server returns the following response:

```
{"message":"Welcome to the Tailscale Funnel Demo Server!","timestamp":"2025-08-20T14:48:15.551Z","endpoints":["GET / - This welcome message","GET /api/status - Server status information","POST /api/echo - Echo back the request body"]}
```

Now test the API status endpoint with `curl`:

```
curl http://localhost:3000/api/status
```{{ execute }}

The server returns the following output:

```
{"status":"running","uptime":177.335979813,"memory":{"rss":61280256,"heapTotal":9011200,"heapUsed":6998944,"external":1996895,"arrayBuffers":18635},"version":"v22.18.0"}
```

Your server is listening, but you can only access it from this device.
