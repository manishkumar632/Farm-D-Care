# FarmDCare

FarmDCare is a cross-platform mobile application designed to assist farmers and agricultural professionals in managing farm activities, accessing resources, and leveraging technology for better crop care and productivity. Built with Flutter and FlutterFlow, the app integrates modern features such as AI-based disease detection, cloud storage, and multilingual support.

![FarmDCare Screenshot](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0003.jpg)

## Features

- **AI Disease Detection:** Use TensorFlow Lite models to identify crop diseases from images.
- **Cloud Integration:** Store and retrieve data using Firebase (Firestore, Storage, Auth, Crashlytics, Performance).
- **Multilingual Support:** Available in English, Hindi, Gujarati, Bengali, Marathi, Punjabi, Tamil, Nepali, and Telugu.
- **Media Uploads:** Upload photos, videos, and documents for farm records.
- **Offline Support:** Access cached data and media when offline.
- **User Authentication:** Sign in with Google, Apple, or email.
- **Notifications & Analytics:** Track app usage and receive important updates.
- **Modern UI:** Built with FlutterFlow, Google Fonts, and responsive layouts.
- **Resource Library:** Access guides, videos, and PDFs for best farming practices.

## Technology Stack

- **Flutter** (Dart)
- **Firebase** (Firestore, Auth, Storage, Crashlytics, Performance)
- **TensorFlow Lite** (on-device AI)
- **Provider** (state management)
- **Google Sign-In, Apple Sign-In**
- **FlutterFlow** (UI builder)
- **Other Packages:** auto_size_text, cached_network_image, file_picker, image_picker, video_player, webview_flutter, etc.

## Project Structure

- `lib/` - Main Flutter/Dart source code
  - `auth/` - Authentication logic
  - `backend/` - Firebase and backend services
  - `components/` - Reusable UI components
  - `pages/` - App screens and widgets
  - `potato_disease/` - Disease detection features
  - `flutter_flow/` - FlutterFlow generated code
- `assets/` - App resources
  - `images/` - App images and icons
  - `videos/` - Video content
  - `audios/` - Audio resources
  - `pdfs/` - Documentation
  - `fonts/` - Custom fonts
- `web/` - Web build files
- `ios/`, `android/` - Platform-specific code

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/Farm-D-Care.git
   cd Farm-D-Care
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Add Firebase configuration:**

   - Place your `GoogleService-Info.plist` (iOS) and `google-services.json` (Android) in the respective folders.

4. **Run the app:**
   ```bash
   flutter run
   ```

## Screenshots

The `/images/` folder contains 13 images showcasing various features and UI screens of FarmDCare.

### All Images

| Image 1                                                                                                                          | Image 2                                                                                                                          | Image 3                                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| ![1](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0003.jpg) | ![2](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0004.jpg) | ![3](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0005.jpg) |

| Image 4                                                                                                                          | Image 5                                                                                                                          | Image 6                                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| ![4](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0006.jpg) | ![5](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0007.jpg) | ![6](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0008.jpg) |

| Image 7                                                                                                                          | Image 8                                                                                                                          | Image 9                                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| ![7](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0009.jpg) | ![8](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0010.jpg) | ![9](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0011.jpg) |

| Image 10                                                                                                                          | Image 11                                                                                                                          | Image 12                                                                                                                          |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| ![10](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0012.jpg) | ![11](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0013.jpg) | ![12](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0014.jpg) |

| Image 13                                                                                                                          |
| --------------------------------------------------------------------------------------------------------------------------------- |
| ![13](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0015.jpg) |

## Contributing

Feel free to contribute to this project by submitting issues or pull requests. Please follow the existing code style and include appropriate tests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
