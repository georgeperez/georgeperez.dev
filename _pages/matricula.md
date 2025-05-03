---
title: RUMAD on macOS
layout: page
id: matricula
permalink: /matricula
---

<h2>RUMAD on macOS</h2>

<p>A change by the CTI office may cause connection issues when trying to access RUMAD after November 11, 2019.</p>

<p>You may see the following warning message:</p>

<picture>
  <source srcset="/assets/images/known-hosts-warning-light.png" media="(prefers-color-scheme: dark)" alt="Screenshot of macOS Terminal with the OpenSSH Known Hosts Warning message showing">
  <img src="/assets/images/known-hosts-warning-dark.png">
</picture>

<p>If you see the warning message above, copy and paste the following text in to <b>Terminal</b>:</p>

<pre class="code-snippet">ssh-keygen -R rumad.uprm.edu</pre>

<p>Press <b>Return</b>. This will regenerate the RUMAD security key.</p>

<p>Then, copy and paste the following text into <b>Terminal</b> to reconnect to <code>rumad.uprm.edu</code>:</p>

<pre class="code-snippet">ssh estudiante@rumad.uprm.edu</pre>

<p>Press <b>Return</b>. You will reconnect to the RUMAD system.</p>
