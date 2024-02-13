---
title: "Connecting to the Yale VPN from Linux"
date: 2024-02-12T17:49:06-07:00
summary: "Working around a recent VPN change."
draft: false
---

In Fall 2023, Yale made some changes to its VPN login system. 
Instead of asking you for your username and password, the VPN client now
directs you to a web-based authentication page. 

This causes some trouble when logging in with `openconnect`. Reaching out to
Yale IT doesn't help here -- they only support Cisco's first-party AnyConnect
client on Windows/Mac. 

But there's a workaround. Just tell `openconnect` to pretend it's a Cisco
client:

```
openconnect --useragent=AnyConnect access.yale.edu
```

And the VPN will start right up. 

----

EDIT: Some readers have had difficulties with the setup process. I'll add
two tips here, so you won't run into the same issues. 

Firstly: Your browser will need access to the current `DISPLAY` or
`WAYLAND_DISPLAY` to open a window. Unfortunately, `sudo` doesn't pass
environment variables to `openconnect` by default -- so remember to use `sudo
-E openconnect` instead. 

Secondly: Running `openconnect` as root will start your browser as root. This
may put you in a situation where: 

- Your VPN requires root permissions. 
- Your browser refuses to start with root permissions, for security reasons. 

Luckily, you can configure the browser that `openconnect` starts via the
`--external-browser` flag. So your final command will look something like this: 


```sh
sudo -E /usr/bin/openconnect  --useragent=AnyConnect \
  --external-browser="$HOME/bin/browser-derooting-wrapper-script" \
  access.yale.edu
```

If you use Chromium, you can set the `browser-derooting-wrapper-script` to: 

```sh
#!/bin/sh -e

# Chromium will run as root if the `--no-sandbox` flag is passed. 
# This is horrendously insecure. So please only use this for the VPN auth
# window. 
exec chromium --no-sandbox "$@"
```

But it's better to set it to something like this: 


```sh
#!/bin/sh -e

# Use `su` to start Firefox as our regular, non-root user. 
exec su --preserve-environment $YOUR_USERNAME firefox "$@"
```
