# Prerequisites

To complete this tutorial, you need:

* A [Tailscale](https://tailscale.io/download) account. You'll install Tailscale in this lesson but you need an account first.
* [Node.js](https://nodejs.org/) installed to run the server.
* Basic familiarity with command line operations.


Before moving on, install Node.js on your machine.

On Ubuntu, add a new source list to your package manager for the latest LTS version of Node.js:

```
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
```{{ execute }}

Now install Node with `apt`:

```
sudo apt install -y nodejs
```{{ execute }}


Once the installation completes, verify you've installed Node.js with the following command:

```
node -v
```{{ execute }}

Next you'll build a small server with Node.js.

