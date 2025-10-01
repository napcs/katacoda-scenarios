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

Create the main server file in the `tailscale-funnel-demo` directory. Call the script `server.js`:

```
touch server.js
```{{ execute }}

Add the following code to the file to define the server:

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
```{{copy}}

Save your file.

Now run your server. Use the terminal window in the IDE to run the server.

Execute the following command to start your erver:

```
node server.js
```{{ execute }}


The server displays a message confirming that it's running:

```
Server running at http://localhost:3000
Press Ctrl+C to stop the server
```

You'll test your server manually next. Press **Check** to verify the server is running before moving on.

