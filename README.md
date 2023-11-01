# My Portfolio

This is my website portfolio to display everything about my current project and working experience. This website were build 100% using Flutter web.<br /><br />
Preview: maestrofaiz.com

## STEPS TO DEPLOY FLUTTER WEB HOSTING
Here are the simple steps to deploy and hosting your Flutter web to Firebase Hosting

1. run 'flutter clean && flutter pub get'
2. run 'flutter build web --dart-define=FLUTTER_WEB_USE_SKIA=true --release' for smooth experience
3. run 'sudo npm install -g firebase-tools' (if not install yet)
4. run 'firebase login' to login with you Firebase account
5. run 'firebase init'
6. select your Firebase project (for hosting) and Flutter project
7. choose which features you want. Here we choose hosting features.
8. ... public directory - Enter 'build/web'
9. ... single page app? Enter N
10. ... github? Enter N
11. ... override build/web file? Enter N
12. after Firebase initialization complete, run 'firebase deploy'
13. completed. 
