---
title: "Connecting to the Yale VPN from Linux"
date: 2023-12-20T17:49:06-07:00
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
