When you're developing web applications locally, you often need to share your work-in-progress with clients, teammates, or stakeholders for feedback. Traditional solutions like port forwarding, ngrok, or deploying to staging servers can be cumbersome, insecure, or time-consuming.

[Tailscale Funnel](https://tailscale.com/kb/1223/tailscale-funnel) solves this problem by creating secure, authenticated tunnels from your local development server to the internet. Instead of exposing your machine directly or juggling complex networking configurations, Funnel provides a simple command that generates a public URL pointing to your local server. This URL works from anywhere on the internet, but only people you explicitly share it with can access it.

In this interactive tutorial, you'll build a tiny Node.js HTTP server and use
Tailscale Funnel to share it securely with others. You'll create a working
server, install Tailscale on the machine running the server,
expose the server through Funnel, and manage the connection.

## How to use the environment

On the right side of the screen is your IDE and terminal. You'll use multiple terminal tabs in
this lesson.

Start with the **Editor** tab selected.

You don't have to type long commands either. Click on the following command and it
executes in the terminal on the right:

```shell
echo "Hi from Tailscale"
```{{ execute }}

Let's get started. Press the **Start** button to continue.
