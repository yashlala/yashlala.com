---
title: "About Me"
date: 2022-08-26T12:15:53-08:00
draft: false
---

Hello! I'm Yash. 

I finished my B.S. in Computer Science in Spring 2022. 
Since then, I've been working full time at 
[SOLAR](http://systems.cs.ucla.edu/projects.html) under the supervision of
[Prof. Harry Xu](http://web.cs.ucla.edu/~harryxu). 

I'm broadly interested in systems for efficient data-center scale computing. 
My recent work focuses on 
[disaggregated memory](https://arxiv.org/pdf/2202.02223.pdf) based systems. 

{{< figure src="/img/yash.png"
alt="My face."
caption="My face." >}}

My current project involves tweaking the Linux kernel's swap subsystems to
allow for cgroup-based control of active swap partitions, per-cgroup swap
cache isolation, and more. This has positive implications for swap throughput
--- but more importantly, it makes it easy to develop and control
frontswap-based remote memory systems [^1]. 

If you'd like to chat, you can find me at
`yashlala [at] ucla [dot] edu`, or via the links on the bottom right. 

[^1]: See [Canvas](https://arxiv.org/abs/2203.09615) for details. 
