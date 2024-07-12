# Flutter Chat App

This is a chat app written with Flutter using the MVVM (Model-View-ViewModel) pattern.

## Getting Started

### Prerequisites

Ensure you have the following installed:
- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Dart SDK
- An IDE (VS Code, Android Studio, etc.)

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/andriyantohalim/flutter_chat_app.git
    cd flutter_chat_app
    ```

2. **Install dependencies:**
    ```bash
    flutter pub get
    ```

3. **Set up the environment:**
    - Obtain your OpenAI API Key from [OpenAI](https://platform.openai.com/account/api-keys).
    - Create a `.env` file in the root directory and add your API key:
      ```plaintext
      OPENAI_API_KEY=sk-xxxxxxxxxxxxxxxxxxxxx
      ```

4. **Run the app:**
    ```bash
    flutter run
    ```

## Project Structure

Provide an overview of the project structure:
- `lib/` - Contains the Dart code for the app
  - `models/` - Data models
  - `view_models/` - ViewModels for the MVVM pattern
  - `views/` - UI components

## Features

- Chat functionality with OpenAI integration
- MVVM architecture
- Cross-platform support (iOS, Android, Web, Desktop)

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature-name`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature-name`)
5. Open a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Flutter](https://flutter.dev/)
- [OpenAI](https://openai.com/)