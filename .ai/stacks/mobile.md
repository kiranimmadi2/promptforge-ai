# Mobile Stack Guidelines (Flutter & Firebase)

This document provides best practices for full-stack mobile applications utilizing Flutter and Firebase.

## Firebase Integration Best Practices
*   Initialize Firebase asynchronously in `main.dart`:
    ```dart
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    ```
*   Keep Firebase collection names and documents strongly typed by using data models with `fromJson` and `toJson` helper methods.
*   Secure database queries by enforcing Firebase Security Rules (Firestore and Realtime Database). Never deploy with rules wide open.
*   Use Firebase Auth state changes streams to handle reactive app state.

## Navigation & UI Rules
*   Use Navigator 2.0 or GoRouter for complex web/deep-linking routing support.
*   Ensure full responsive styling across both iOS and Android layouts.
