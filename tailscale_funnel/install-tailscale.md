Now you'll install Tailscale on this device so you can use it to allow others to access the web server you made.

In the same terminal window where you ran `curl`, add Tailscale's package signing key and repository:

```shell
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/oracular.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/oracular.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
```{{ execute }}

Now install Tailscale using `apt`. First, update the package sources:

```shell
sudo apt update
```{{ execute }}

Then install Tailscale:

```shell
sudo apt install -y tailscale
```{{ execute }}


Now start Tailscale to connect your machine to your Tailscale network.

```shell
sudo tailscale up
```{{ execute }}

Tailscale asks you to log in with an authentication link:

```
To authenticate, visit:

        https://login.tailscale.com/a/12345abcde....
```

Follow the link it provides to authenticate this device with your tailnet.

Once you've authenticated this device, return to your terminal.

run the following command to ind your Tailscale IPv4 address and verify your connection to your tailnet:

```shell
tailscale ip -4
```{{ execute }}

The command returns an IPv4 address starting with `100.`.

Verify Tailscale is running and can find other devices on your tailnet:

```bash
tailscale status
```{{ execute }}


This displays all devices on your tailnet.

You're ready to share your web server.
