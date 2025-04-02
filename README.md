# Note App - Flutter & Firebase

## Overview

This is a **Note App** built using **Flutter** and **Firebase**. The app allows users to create, read, update, and delete notes. Firebase Firestore is used for storing notes in real-time, and Firebase Authentication is used for managing user login and signup.

## Features

- User authentication using Firebase Authentication (Email/Password).
- Create, read, update, and delete notes.
- Store notes in Firebase Firestore.
- Real-time syncing of data with Firestore.
- Easy-to-use UI for managing notes.

## Prerequisites

Before running this app, ensure you have the following:

- **Flutter SDK**: [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Firebase Account**: [Create a Firebase Project](https://console.firebase.google.com/)
- **Android Studio/Xcode**: Ensure that you have Android Studio or Xcode installed for building the app.

## Getting Started

### 1. Setting up Firebase

1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Create a new Firebase project or use an existing one.
3. Enable **Firebase Authentication**:
   - Go to **Authentication** in the Firebase console.
   - Enable **Email/Password Authentication** (or any other sign-in method you prefer).
4. Enable **Firestore Database**:
   - Navigate to **Firestore Database** and create a database in production mode or test mode.
   
### 2. Add Firebase to Your App

#### Android Setup

1. Add your Android app to the Firebase project:
   - In Firebase console, click on **Add app** and select Android.
   - Download the `google-services.json` file.
   - Place `google-services.json` in the `android/app` directory of your Flutter project.

2. Modify the `android/build.gradle` file:
   - Add the Google services classpath in the `dependencies` section:
     ```gradle
     classpath 'com.google.gms:google-services:4.3.3'
     ```
   
   - Apply the plugin at the bottom of the `android/app/build.gradle`:
     ```gradle
     apply plugin: 'com.google.gms.google-services'
     ```

#### iOS Setup

1. Add your iOS app to Firebase:
   - In Firebase console, click on **Add app** and select iOS.
   - Download `GoogleService-Info.plist`.
   - Place `GoogleService-Info.plist` in the `ios/Runner` directory.

2. Modify `ios/Podfile`:
   - Set the minimum platform to iOS 10.0:
     ```ruby
     platform :ios, '10.0'
     ```

3. Run the following command in the terminal to install the pods:
   ```bash
   cd ios/
   pod install
