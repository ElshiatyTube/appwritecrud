# Flutter App with Appwrite Integration

## Overview
This Flutter application demonstrates a clean architecture approach with modular folder organization. It integrates with Appwrite for backend services to fetch and display a list of items. The app is built with BLoC (Cubit) for state management.

> **Notes**:
> - The domain layer is not included for simplicity.
> - No abstract client interface is used for CRUD operations as the app solely relies on the Appwrite client with only read operation.
> - No base or abstract layers were created for screens, view models, or models to keep the architecture simple and avoid over-engineering.
> - A separate layer for service locators or dependency injection is not introduced, as only one screen requires dependency injection with a single repository.

## Features
- **Clean Architecture**: Structured into `core`, `data`, and `presentation` layers.
- **BLoC State Management**: Implements Cubits and States for managing UI interactions.
- **Appwrite Integration**: Connects to Appwrite backend for fetching and displaying items from a collection.
- **Responsive Design**: Configured with `flutter_screenutil` for adapting to different screen sizes.

## Folder Structure
- **lib/core**: Contains application-wide utilities and configurations.
    - `clients`: Appwrite client configuration.
    - `utils`: Reusable utilities.
- **lib/data**: Handles data models and repositories.
    - `models`: Item model definition.
    - `repositories`: Repository for fetching items from Appwrite.
- **lib/presentation**: Manages UI components and resources.
    - `resources`: Enums, managers, and routing.
    - `ui`: Cubits, screens, and widgets for the user interface.

## Getting Started
### Prerequisites
- Flutter 3.0 or above.
- Appwrite server instance with a collection configured.

### Setup
1. Clone the repository.
2. Run `flutter pub get` to fetch dependencies.
3. Configure the Appwrite client in `AppwriteClient` class.
4. Run the app using:
   ```bash
   flutter run
   ```

## Key Components
### HomeScreen
Displays the list of items using a `BlocBuilder`. Handles states like `loading`, `success`, and `error`.

### HomeCubit
Manages the business logic for fetching items. Utilizes the `ItemRepository` for data access.

### ItemRepository
Interacts with the Appwrite backend to fetch the list of items from the specified collection.

### RouteGenerator
Defines the application's routes and injects dependencies like `ItemRepository` and `HomeCubit` using `RepositoryProvider` and `BlocProvider`.

## Dependencies
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
- [appwrite](https://pub.dev/packages/appwrite)

