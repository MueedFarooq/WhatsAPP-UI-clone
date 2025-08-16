# WhatsApp UI Clone

A pixel-perfect WhatsApp UI clone built with Flutter, replicating the familiar chat interface with three main screens: Chats, Updates, and Calls.

## 🚀 Features

- **Authentic WhatsApp UI** with bottom navigation
- **Three main screens**: Chats, Updates (Status), and Calls
- **Dynamic search functionality** with toggle animation
- **Scrollable chat lists** with custom avatars
- **Popup menus** with WhatsApp-style options
- **Cross-platform** support (Android/iOS)

## 🛠️ Tech Stack

- **Flutter SDK** - Cross-platform framework
- **Dart** - Programming language
- **Android Studio** - Development environment

## 📱 Screenshots
<img width="385" height="830" alt="image" src="https://github.com/user-attachments/assets/3407e9e4-6ddd-49b5-8e89-e01f21f1ce0d" /><img width="315" height="664" alt="image" src="https://github.com/user-attachments/assets/b661995b-f5c4-4d66-9d75-1b121ed6e0eb" /><img width="299" height="640" alt="image" src="https://github.com/user-attachments/assets/678ba05c-ab43-47f9-bc3e-3af84253010d" />


## 🎯 Quick Start

### Prerequisites
- Flutter SDK installed
- Android Studio or VS Code
- Android/iOS emulator or physical device

### Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/whatsapp-clone-flutter.git

# Navigate to project directory
cd whatsapp-clone-flutter

# Get dependencies
flutter pub get

# Run the app
flutter run
```

## 🏗️ Project Structure

```
lib/
├── main.dart              # Entry point & navigation
├── screens/
│   ├── chats_screen.dart   # Chat list screen
│   ├── updates_screen.dart # Status updates screen
│   └── calls_screen.dart   # Call logs screen
```

## 💡 Key Features Explained

### Bottom Navigation
- Seamless tab switching between screens
- Active tab highlighting
- Smooth transitions

### Chats Screen
- WhatsApp-style chat list
- Profile pictures with NetworkImage
- Last message preview
- Timestamp display

### Updates Screen  
- Status updates section
- Channel updates
- Viewed/Recent status separation
- Rich text formatting

### Calls Screen
- Call history with icons
- Incoming/Outgoing/Missed call indicators
- Favorites section
- Clear history option

## 🔧 Technical Implementation

### Dynamic UI Components
- **Search Toggle**: Animated search bar appearance
- **ListView.builder**: Efficient scrollable lists
- **PopupMenuButton**: Context menus
- **Custom AppBars**: Screen-specific headers

### UI Consistency
- **RobotoSlab font** throughout the app
- Consistent padding and spacing
- WhatsApp color scheme
- Material Design principles

## 🚀 Running the App

1. **Start emulator** or connect device
2. **Run flutter run** in terminal
3. **Navigate** using bottom tabs
4. **Test features** like search toggle and menus

## 🎯 Learning Outcomes

This project demonstrates:
- **Flutter widget composition**
- **State management** with StatefulWidget
- **Navigation patterns** in mobile apps
- **ListView optimization** techniques
- **UI/UX replication** skills
- **Cross-platform development**

## 📋 Future Enhancements

- Add chat functionality
- Implement status posting
- Add voice/video calling
- Database integration
- Real-time messaging
- Push notifications

## 🤝 Contributing

Feel free to fork this project and submit pull requests for improvements!

## 📝 License

This project is for educational purposes and UI demonstration.

---

*Built with ❤️ using Flutter*
