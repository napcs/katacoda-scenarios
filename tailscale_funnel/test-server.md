# Test your server


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
