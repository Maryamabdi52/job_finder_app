# Job Finder App

A modern Flutter application for job searching and management with Firebase authentication.

## Features

- 🔐 **Firebase Authentication** - Secure login and registration
- 📱 **Modern UI/UX** - Beautiful Material Design 3 interface
- 🔍 **Job Search** - Search and filter job listings
- 📋 **Job Details** - Detailed view of job information
- 📱 **Cross-Platform** - Works on Android, iOS, Web, and Desktop

## Getting Started

This project is a starting point for a Flutter application.

### Prerequisites

- Flutter SDK (^3.5.3)
- Dart SDK
- Firebase project setup

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Maryamabdi52/job_finder_app.git
```

2. Navigate to the project directory:
```bash
cd job_finder_app
```

3. Install dependencies:
```bash
flutter pub get
```

4. Configure Firebase:
   - Add your `google-services.json` file to `android/app/`
   - Configure Firebase in your project

5. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── authstate.dart           # Authentication state management
├── login.dart              # Login screen
├── registration.dart       # Registration screen
├── models/
│   └── job.dart           # Job data model
├── screens/
│   ├── home_screen.dart    # Main job listing screen
│   ├── job_details_screen.dart
│   ├── job_application_screen.dart
│   ├── contact_screen.dart
│   └── main_navigation.dart
└── widgets/
    ├── job_card.dart       # Job listing card widget
    └── custom_drawer.dart  # Navigation drawer
```

## Dependencies

- `firebase_core`: ^3.10.0
- `firebase_auth`: ^5.4.0
- `provider`: ^6.0.5
- `http`: ^1.1.0
- `google_fonts`: ^6.1.0
- `fluttertoast`: ^8.2.10

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.

## Support

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
