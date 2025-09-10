---
title: "Spanner: Google vs the CAP Theorem"
date: 2021-10-17T19:14:45-08:00
draft: false
---

In this presentation, I explain how Google's 
[Spanner](https://static.googleusercontent.com/media/research.google.com/en//archive/spanner-osdi2012.pdf)
system is implemented -- and how it's performance seemingly defies the 
[CAP theorem](https://en.wikipedia.org/wiki/CAP_theorem). 

I've tried to keep this presentation accessible to people without a deep
systems background, but do let me know if you weren't at my 
[prior presentation](/binary-search-club/defining-time) about distributed
systems. I promise I'll keep an eye on you throughout today's presentation. 

In this presentation, I: 

- Introduce the CAP theorem using a hypothetical groupchat as an example. 
- Discuss strict and loose consistency models. 
- Explain how Spanner provides consistency without angering the CAP theorem. 
  - Explain the underlying theory (clock drift error bounds => "wait out the
    uncertainty")
  - Talk about the expensive hardware that makes this feasible (atomic clocks
    everywhere!). 
- Conclusion: with enough money and hardware, you can create large-scale,
  strongly-consistent, systems -- even when the theoreticians say otherwise. 

Slides available [here](slides.pdf). 
