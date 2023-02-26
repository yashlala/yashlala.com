---
title: "Defining Time in Distributed Systems"
date: 2021-05-15T19:14:45-08:00
summary: " "
draft: false
---

In this presentation, I talk about: 

- Race conditions in single-machine programming 
  ([TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use), etc).
- How solving these race conditions necessitates atomic primitives. 
- "Race conditions" in distributed systems (oh no! no more atomics!). 
- The benefits of lax consistency models for distributed systems. 
- A walkthrough of Lamport clocks. 

Slides available [here](/binary-search-club/defining-time.pdf). 
