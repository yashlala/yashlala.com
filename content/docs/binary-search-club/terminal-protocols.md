---
title: "Computer Terminal Protocols"
date: 2021-10-03T19:14:45-08:00
draft: false
---

Why do terminal emulators still mess up their output when you resize the
window? In this presentation, I walk through the history of UNIX terminals. 
I discuss: 

- Antique methods of electrical communication, from Morse code to the famous 
  [barbed wire telephone network](https://en.wikipedia.org/wiki/Party_line_(telephony)#Barbed_wire_telephone_lines)
  used by American farmers. 
- A historical example of the difficulties of synchronous communication
  protocols. 
- The use of punch cards as both a means of _I/O logging_ (stock tickers) and
  as a means of _programming_ (Jaquard looms => IBM 1401). 
- The historical basis for a separate kernel TTY layer, and the ugly
  consequences. 
- Finally: how communication asynchrony, punch cards, and the TTY system
  architecture cause the problems we know and love today. 

Slides available [here](/binary-search-club/terminal-protocols.pdf). 
