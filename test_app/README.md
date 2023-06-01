# Recipe App

Recipe App is a Flutter application that displays a list of recipes fetched from an API endpoint. It follows the MVVM (Model-View-ViewModel) architecture for efficient separation of concerns and provides a scalable and maintainable codebase.

## Features

- Fetches food data from the API endpoint.
- Displays a list of food recipes on a single page.
- Handles data loading and error handling gracefully.

## API Endpoint

The app fetches recipe data from the following API endpoint:

- Endpoint: [https://hf-android-app.s3-eu-west-1.amazonaws.com/android-test/recipes.json](https://hf-android-app.s3-eu-west-1.amazonaws.com/android-test/recipes.json)

## Requirements

To run the Recipe App project locally, make sure you have the following:

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: [Install Dart](https://dart.dev/get-dart)
- Android Studio or VS Code: [Install IDE](https://flutter.dev/docs/get-started/editor)

## Setup

1. Clone the project repository:

```bash
git clone https://github.com/TommyGhost/Tech-Test.git
```

2. Change directory to the project folder:

```bash
cd Tech-Test
```

3. Get the required dependencies:

```bash
flutter pub get
```

## Usage

1. Start an emulator or connect a physical device.

2. Run the app using the following command:

```bash
flutter run
```

3. The app will be installed and launched on the selected device/emulator.


## Implementation Details

The Recipe App project follows the MVVM architecture, which separates the concerns into three main components:

- **Model**: The `FoodListModel` model represents a food's data structure and provides methods for serialization and deserialization.

- **UI**: The `FoodPage` represents the view where the list of recipes is displayed. It observes changes from the ViewModel and renders the UI accordingly.

- **ViewModel**: The `FoodViewModel` handles the business logic and interacts with the API to fetch the recipe data. It exposes the necessary data and methods for the view to observe and trigger actions.

The app utilizes the `http` package to perform HTTP requests to the API endpoint and the `provider` package for state management and data sharing between the ViewModel and the View.

## Error Handling

The app incorporates error handling to provide a smooth user experience. In case of network errors or API failures, appropriate error messages are displayed to the user, and they are guided on how to retry or resolve the issue. The error handling is implemented both at the ViewModel level and the UI level.

## Code Readability and Scalability

The Recipe App project prioritizes

 code readability, scalability, and maintainability. The codebase follows Flutter best practices, utilizes descriptive variable and function names, adheres to the MVVM architecture, and separates concerns into modular components.

To ensure scalability, the app is designed to easily accommodate future enhancements and feature additions. The codebase is organized into logical folders and packages, and components are designed to be reusable and extendable.

## Contributions

Contributions to the Recipe App project are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the GitHub repository.
