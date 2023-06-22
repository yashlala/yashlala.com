---
title: "Containers"
date: 2021-04-10T19:14:45-08:00
draft: false
---

What's the difference between a containers and a virtual machine? 
How is a hypervisor/kernel actually implemented? 
Do these abstractions add runtime overhead? If so, how much, and _where_? 

This presentation attempts to provide clear, _evidence based_, answers to the
above questions. In this presentation, I: 

- Discuss the implementations of virtual machines and containers. 
- Trace the history behind VMs and containers. I argue that the historical
  prevalence of VMs was largely due to a failure of contemporary OS isolation
  mechanisms, and that this trend will reverse. 
- Dispel common misconceptions about each technology. 
- Create a Docker clone in C using Linux namespaces. 

The "live" portion of this presentation consisted of a live demo of various
Linux namespaces on my laptop, and was mostly lifted from 
["Containers from Scratch"](https://youtu.be/8fi7uSYlOdc), a presentation
delivered at GOTO Amsterdam 2018 by 
[Liz Rice](https://www.lizrice.com/). 
I'd highly recommend checking out the original talk, which is masterfully done
(particularly the live code demo). 


Slides available [here](/binary-search-club/containers.pdf). 
