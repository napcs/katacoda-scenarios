Open a new terminal, since your server is running in another terminal.

In this new terminal window, add Tailscale's package signing key and repository:

```shell
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/oracular.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/oracular.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
```{{ execute }}

Now install Tailscale using `apt`:

```shell
sudo apt update
sudo apt install -y tailscale
```{{ execute }}


Connect your machine to your Tailscale network and authenticate in your browser:

```shell
sudo tailscale up
```{{ execute }}

Run the following command to ind your Tailscale IPv4 address and verify your connection to your tailnet:

```shell
tailscale ip -4
```

The command returns an IPv4 address starting with `100.`.


