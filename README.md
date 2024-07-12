# Flutter Chat App

This is a chat application developed using the Flutter framework and follows the MVVM (Model-View-ViewModel) architecture pattern. It leverages OpenAI's API for enhanced chat functionality.

## Getting Started

### Prerequisites

Ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart SDK
- An IDE such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

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

An overview of the project structure to help you navigate the codebase:
- `lib/` - Contains the Dart code for the app
  - `models/` - Defines the data models used in the application
  - `view_models/` - Contains the ViewModel classes adhering to the MVVM pattern
  - `views/` - Includes the UI components and screens

## Features

- **Chat Functionality:** Users can send and receive messages through an intuitive chat interface.
- **OpenAI Integration:** Utilizes OpenAI's API for advanced conversational capabilities.
- **MVVM Architecture:** Ensures a clear separation of concerns, making the app scalable and maintainable.
- **Cross-Platform Support:** Compatible with iOS, Android, Web, and Desktop platforms.

## Contributing

We welcome contributions from the community! Follow these steps to contribute:
1. Fork the repository.
2. Create a new branch:
    ```bash
    git checkout -b feature/your-feature-name
    ```
3. Commit your changes:
    ```bash
    git commit -m 'Add some feature'
    ```
4. Push to the branch:
    ```bash
    git push origin feature/your-feature-name
    ```
5. Open a pull request on GitHub.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

- [Flutter](https://flutter.dev/) for providing the framework.
- [OpenAI](https://openai.com/) for the conversational AI API.

For more information, visit the [project repository](https://github.com/andriyantohalim/flutter_chat_app).