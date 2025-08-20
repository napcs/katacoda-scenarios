# Share your server with Tailscale Funnel

Verify Tailscale is running:

```bash
tailscale status
```{{ execute }}

Check Funnel availability:

```bash
tailscale funnel status
```{{ execute }}

Start a Funnel that listens on the same port as your server:

```bash
tailscale funnel 3000
```{{ execute }}

The response displays URLs you can use to access this service:
```
Available within your tailnet:
  https://your-machine-name.your-tailnet-name.ts.net/

Available on the internet:
  https://your-machine-name-3000.your-tailnet-name.ts.net/
```

Send the public URL to a friend and have them test it.

