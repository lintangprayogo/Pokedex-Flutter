# Pokedex App

---

## Overview

This is a **Pokedex application** built with **Flutter**, designed to showcase the implementation of **Clean Architecture**. A unique feature of this app is its integration with **Google Gemini for image recognition**, allowing users to identify Pokémon directly from images.

---

## Features

* **Clean Architecture Implementation**: Demonstrates a robust and scalable project structure, separating concerns into distinct layers (presentation, domain, data).
* **Flutter Framework**: A beautiful and performant cross-platform mobile application developed using Flutter.
* **Google Gemini Integration**: Leverages the Gemini API for advanced image recognition capabilities, enabling users to identify Pokémon from uploaded images.
* **Pokedex Functionality**: Displays detailed information about various Pokémon, including their types, abilities, statistics, and more.


---

## Why Clean Architecture?

Clean Architecture is a design philosophy that promotes a clear separation of concerns, making the application:

* **Independent of Frameworks**: The core business logic doesn't depend on any specific UI framework or database.
* **Testable**: Business rules can be tested without the UI, database, or web server.
* **Independent of UI**: The UI can change easily without changing the rest of the system.
* **Independent of Database**: You can swap out databases without altering business rules.
* **Independent of any external agency**: Business rules don't know anything about the outside world.

This project serves as a practical example of how to implement Clean Architecture in a Flutter application, leading to more maintainable, scalable, and testable code.

---

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* **Flutter SDK**: [Install Flutter](https://flutter.dev/docs/get-started/install)
* **Dart SDK**: Included with Flutter
* **Google Cloud Project & Gemini API Key**:
    * Create a Google Cloud Project.
    * Enable the Gemini API.
    * Generate an API Key for your project.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/lintangprayogo/Pokedex-Flutter.git](https://github.com/lintangprayogo/Pokedex-Flutter.git)
    cd Pokedex-Flutter
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```


3.  **Run the application:**
    ```bash
    flutter run
    ```

---

## Project Structure

The project adheres to Clean Architecture principles, organized into the following main layers:

* **`lib/features/`**: Contains feature-specific code, further divided into:
    * **`data/`**: Data sources (APIs, local storage) and repositories implementations.
    * **`domain/`**: Core business logic, entities, use cases (interactors), and abstract repositories.
    * **`presentation/`**: UI components (widgets, pages) and BLoCs/Providers for state management.
* **`lib/core/`**: Common utilities, constants, error handling, and dependency injection setup.

---

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

## License

Distributed under the MIT License. See `LICENSE` for more information.

---

## Contact

Lintang Prayogo - lintang.prayogo.dev@gmail.com

Project Link: [https://github.com/lintangprayogo/Pokedex-Flutter](https://github.com/lintangprayogo/Pokedex-Flutter)
