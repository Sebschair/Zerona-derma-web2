[33mcommit 6072ae16d68ff7307a6e063a43829b983bbd0f7c[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32magents/footer-faq-section-addition[m[33m)[m
Author: Sammy <purisamyog14@gmail.com>
Date:   Fri Jun 19 11:27:45 2026 +0545

    changes to appearance of tos,pp and footer redirection to tos,cs and pp

[1mdiff --git a/about.html b/about.html[m
[1mindex 18288ad..0e5bba3 100644[m
[1m--- a/about.html[m
[1m+++ b/about.html[m
[36m@@ -160,9 +160,9 @@[m
       <div class="footer-bottom">[m
         <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
         <div class="footer-bottom-links">[m
[31m-          <a href="#">Privacy Policy</a>[m
[31m-          <a href="#">Terms of Service</a>[m
[31m-          <a href="#">Cookie Settings</a>[m
[32m+[m[32m          <a href="pp.html">Privacy Policy</a>[m
[32m+[m[32m          <a href="tos.html">Terms of Service</a>[m
[32m+[m[32m          <a href="cs.html">Cookie Settings</a>[m
         </div>[m
       </div>[m
     </div>[m
[1mdiff --git a/faqs.html b/faqs.html[m
[1mindex 4ee60dc..d3c0df7 100644[m
[1m--- a/faqs.html[m
[1m+++ b/faqs.html[m
[36m@@ -166,9 +166,9 @@[m
       <div class="footer-bottom">[m
         <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
         <div class="footer-bottom-links">[m
[31m-          <a href="#">Privacy Policy</a>[m
[31m-          <a href="#">Terms of Service</a>[m
[31m-          <a href="#">Cookie Settings</a>[m
[32m+[m[32m          <a href="pp.html">Privacy Policy</a>[m
[32m+[m[32m          <a href="tos.html">Terms of Service</a>[m
[32m+[m[32m          <a href="cs.html">Cookie Settings</a>[m
         </div>[m
       </div>[m
     </div>[m
[1mdiff --git a/index.html b/index.html[m
[1mindex 0cd04b7..dc1eb98 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -272,9 +272,9 @@[m
       <div class="footer-bottom">[m
         <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
         <div class="footer-bottom-links">[m
[31m-          <a href="#">Privacy Policy</a>[m
[31m-          <a href="#">Terms of Service</a>[m
[31m-          <a href="#">Cookie Settings</a>[m
[32m+[m[32m          <a href="pp.html">Privacy Policy</a>[m
[32m+[m[32m          <a href="tos.html">Terms of Service</a>[m
[32m+[m[32m          <a href="cs.html">Cookie Settings</a>[m
         </div>[m
       </div>[m
     </div>[m
[1mdiff --git a/ingredients.html b/ingredients.html[m
[1mindex 184177b..2071317 100644[m
[1m--- a/ingredients.html[m
[1m+++ b/ingredients.html[m
[36m@@ -182,9 +182,9 @@[m
       <div class="footer-bottom">[m
         <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
         <div class="footer-bottom-links">[m
[31m-          <a href="#">Privacy Policy</a>[m
[31m-          <a href="#">Terms of Service</a>[m
[31m-          <a href="#">Cookie Settings</a>[m
[32m+[m[32m          <a href="pp.html">Privacy Policy</a>[m
[32m+[m[32m          <a href="tos.html">Terms of Service</a>[m
[32m+[m[32m          <a href="cs.html">Cookie Settings</a>[m
         </div>[m
       </div>[m
     </div>[m
[1mdiff --git a/pp.html b/pp.html[m
[1mindex a2d7ec7..525ab3e 100644[m
[1m--- a/pp.html[m
[1m+++ b/pp.html[m
[36m@@ -4,15 +4,16 @@[m
     <meta charset="UTF-8">[m
     <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
     <title>Privacy Policy - Zerona Derma</title>[m
[31m-    <link rel="stylesheet" href="assets/css/styles.css">[m
[32m+[m[32m    <link rel="stylesheet" href="css/styles.css">[m
 </head>[m
 <body>[m
[31m-    <header>[m
[31m-        <h1>Privacy Policy</h1>[m
[31m-        <p>Last updated: June 18, 2026</p>[m
[32m+[m[32m    <header class="container" style="padding-top: calc(var(--nav-height) + 1rem); padding-bottom: 2rem;">[m
[32m+[m[32m        <p class="section-label">Legal</p>[m
[32m+[m[32m        <h1 class="section-title">Privacy Policy</h1>[m
[32m+[m[32m        <p class="section-subtitle">Last updated: June 18, 2026</p>[m
     </header>[m
     [m
[31m-    <main>[m
[32m+[m[32m    <main class="container">[m
         <section>[m
             <h2>Introduction</h2>[m
             <p>At Zerona Derma, we are committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website.</p>[m
[36m@@ -56,8 +57,10 @@[m
         </section>[m
     </main>[m
 [m
[31m-    <footer>[m
[31m-        <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
[32m+[m[32m    <footer class="footer">[m
[32m+[m[32m        <div class="container footer-bottom">[m
[32m+[m[32m            <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
[32m+[m[32m        </div>[m
     </footer>[m
 </body>[m
[31m-</html>[m
\ No newline at end of file[m
[32m+[m[32m</html>[m
[1mdiff --git a/products.html b/products.html[m
[1mindex 54cbc00..c34a1ad 100644[m
[1m--- a/products.html[m
[1m+++ b/products.html[m
[36m@@ -181,9 +181,9 @@[m
       <div class="footer-bottom">[m
         <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
         <div class="footer-bottom-links">[m
[31m-          <a href="#">Privacy Policy</a>[m
[31m-          <a href="#">Terms of Service</a>[m
[31m-          <a href="#">Cookie Settings</a>[m
[32m+[m[32m          <a href="pp.html">Privacy Policy</a>[m
[32m+[m[32m          <a href="tos.html">Terms of Service</a>[m
[32m+[m[32m          <a href="cs.html">Cookie Settings</a>[m
         </div>[m
       </div>[m
     </div>[m
[1mdiff --git a/reviews.html b/reviews.html[m
[1mindex cc409f3..7b40c1c 100644[m
[1m--- a/reviews.html[m
[1m+++ b/reviews.html[m
[36m@@ -172,9 +172,9 @@[m
       <div class="footer-bottom">[m
         <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
         <div class="footer-bottom-links">[m
[31m-          <a href="#">Privacy Policy</a>[m
[31m-          <a href="#">Terms of Service</a>[m
[31m-          <a href="#">Cookie Settings</a>[m
[32m+[m[32m          <a href="pp.html">Privacy Policy</a>[m
[32m+[m[32m          <a href="tos.html">Terms of Service</a>[m
[32m+[m[32m          <a href="cs.html">Cookie Settings</a>[m
         </div>[m
       </div>[m
     </div>[m
[1mdiff --git a/tos.html b/tos.html[m
[1mindex 57d616d..a0e509c 100644[m
[1m--- a/tos.html[m
[1m+++ b/tos.html[m
[36m@@ -4,15 +4,16 @@[m
     <meta charset="UTF-8">[m
     <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
     <title>Terms of Service - Zerona Derma</title>[m
[31m-    <link rel="stylesheet" href="assets/css/styles.css">[m
[32m+[m[32m    <link rel="stylesheet" href="css/styles.css">[m
 </head>[m
 <body>[m
[31m-    <header>[m
[31m-        <h1>Terms of Service</h1>[m
[31m-        <p>Last updated: June 18, 2026</p>[m
[32m+[m[32m    <header class="container" style="padding-top: calc(var(--nav-height) + 1rem); padding-bottom: 2rem;">[m
[32m+[m[32m        <p class="section-label">Legal</p>[m
[32m+[m[32m        <h1 class="section-title">Terms of Service</h1>[m
[32m+[m[32m        <p class="section-subtitle">Last updated: June 18, 2026</p>[m
     </header>[m
     [m
[31m-    <main>[m
[32m+[m[32m    <main class="container">[m
         <section>[m
             <h2>Agreement to Terms</h2>[m
             <p>By accessing and using the Zerona Derma website, you accept and agree to be bound by the terms and provision of this agreement.</p>[m
[36m@@ -52,8 +53,10 @@[m
         </section>[m
     </main>[m
 [m
[31m-    <footer>[m
[31m-        <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
[32m+[m[32m    <footer class="footer">[m
[32m+[m[32m        <div class="container footer-bottom">[m
[32m+[m[32m            <p>&copy; 2026 Zerona Derma. All rights reserved.</p>[m
[32m+[m[32m        </div>[m
     </footer>[m
 </body>[m
 </html>[m
\ No newline at end of file[m
