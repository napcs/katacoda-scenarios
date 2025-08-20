# Share your server with Tailscale Funnel


Start a Funnel that listens on the same port you used for your server:

```bash
tailscale funnel 3000
```{{ execute }}

When you do this the first time, Tailscale provides you with a URL to enable Funnel on your tailnet.

```
Funnel is not enabled on your tailnet.
To enable, visit:

         https://login.tailscale.com/f/funnel?node=....
```

Follow the URL to activate Tailscale Funnel.

Once you've activated Tailscale Funnel on your tailnet, return to your terminal.

The response displays the URL you can use to access this service from anywhere:
```
Available on the internet

https://your-machine-name.your-tailnet-name.ts.net/
|-- proxy http://127.0.0.1:3000

```

Open a new terminal window and test the url:

```bash
curl https://your-machine-name.your-tailnet-name.ts.net/
```
```{{ execute }}

to a friend and have them test it.

