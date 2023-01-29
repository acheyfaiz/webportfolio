# portfolio

Landing page webportfolio

# STEPS TO DEPLOY FLUTTER WEB HOSTING
1- run flutter build web (flutter build web --dart-define=FLUTTER_WEB_USE_SKIA=true --release) --> for smooth experience
2- run sudo npm install -g firebase-tools (if not install yet)
3- run firebase login
4- run firebase init
5- pilih Y
6- pilih features firebase mana nak pakai - so kita pilih hosting features
7- .... public directory - tulis build/web
8- single page app? N
9- github? N
10- override build/web file? N
11- after firebase initialization complete, run firebase deploy
12- tadaaa siap!
