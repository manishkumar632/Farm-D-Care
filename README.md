# FarmDCare

FarmDCare is a cross-platform mobile application designed to help farmers detect diseases in crops like potato and tomato through camera-based leaf scanning. The app provides instant diagnosis, remedies, and educational videos while leveraging modern technologies like Flutter, Firebase, and TensorFlow Lite for an intelligent farming experience.

![FarmDCare Screenshot](https://github.com/manishkumar632/Farm-D-Care/blob/9558b05b4dd84227d890986db78ae266fb5864fc/images/IMG-20250708-WA0003.jpg)

## Features

### Current Features

- **AI Disease Detection:**

  - Real-time disease detection using mobile camera
  - TensorFlow Lite models for on-device analysis
  - Specialized in potato and tomato diseases (Early Blight, Late Blight)

- **Cloud Integration:**

  - Firebase Authentication for secure user management
  - Cloudinary for efficient image storage
  - Firebase Crashlytics and Performance monitoring

- **Smart Diagnostics:**

  - Crop-specific disease diagnosis
  - Detailed remedy information
  - Video-based solution guides

- **Multilingual Support:**

  - Available in 9 languages:
    - English, Hindi, Gujarati, Bengali
    - Marathi, Punjabi, Tamil
    - Nepali, Telugu

- **Additional Features:**
  - Offline support for cached data
  - Modern, responsive UI
  - Resource library with farming guides

### Planned Features

- **Expert Connect:** Get personalized guidance from certified agricultural experts
- **Training Modules:** Video-based learning for modern farming techniques
- **Rewards System:** Earn points for app usage and community participation
- **Crop Calendar:** Track crop lifecycle and get timely reminders
- **News & Updates:** Latest farming news and government schemes

## Technology Stack

- **Frontend Framework:**
  - Flutter (Dart)
  - FlutterFlow for UI components
- **Backend Services:**

  - Firebase Authentication
  - Cloudinary Storage
  - Firebase Crashlytics
  - Firebase Performance

- **AI/ML:**

  - TensorFlow Lite
  - Custom crop disease dataset

- **State Management:**

  - Provider

- **Key Packages:**
  - auto_size_text
  - cached_network_image
  - file_picker
  - image_picker
  - video_player
  - webview_flutter

## Project Structure

```
lib/
├── auth/           # Authentication logic
├── backend/        # Firebase and backend services
├── components/     # Reusable UI components
├── pages/         # App screens and widgets
├── potato_disease/ # Disease detection features
└── flutter_flow/  # FlutterFlow generated code

assets/
├── images/        # App images and icons
├── videos/        # Video content
├── audios/        # Audio resources
├── pdfs/          # Documentation
└── fonts/         # Custom fonts
```

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

3. **Configure Firebase:**

   - Add `google-services.json` to Android project
   - Add `GoogleService-Info.plist` to iOS project

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

We welcome contributions! Here's how you can help:

- Report bugs and suggest features through issues
- Submit pull requests for bug fixes and features
- Help improve documentation
- Share feedback for UI/UX improvements

Please follow our coding style and include appropriate tests with your contributions.

## License

This project is available under the MIT License. See the LICENSE file for more details.

## Support

For support, please:

- Open an issue on GitHub
- Contact the development team
- Check our documentation
