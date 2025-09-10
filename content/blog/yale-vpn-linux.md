---
title: "Connecting to the Yale VPN from Linux"
date: 2024-02-12T17:49:06-07:00
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

Firstly: Your browser will need access to the `DISPLAY` or `WAYLAND_DISPLAY`
variables to open a window. `sudo` won't pass environment variables to
`openconnect` by default -- so use something like `sudo -E openconnect`
instead. 

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

If none of this works -- you can try opening an existing browser window, _then_
trying the scripts above. `openconnect` should open a tab in the existing
window, which can sidestep the "browser process is root" issue. 
