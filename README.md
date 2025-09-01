# Flutter UI Practice Collection
This repository is a collection of various UI-focused applications and screens built with Flutter. Each project is contained within its own directory and serves as a practical exercise in implementing different UI layouts, state management techniques, and navigation patterns.

## Projects Included

### 1. BMI Calculator App

A functional Body Mass Index (BMI) calculator with a clean and interactive user interface.

#### Features
-   Gender selection (Male/Female).
-   Interactive slider for height input.
-   Steppers for weight and age input.
-   Automatic BMI calculation based on user data.
-   A dedicated results screen displaying the final BMI score and its corresponding health category (e.g., Normal, Overweight).

#### Tech Stack
-   **Framework:** Flutter
-   **State Management:** `flutter_bloc` for managing the calculation logic and UI state.
-   **Navigation:** `go_router` for routing between the input and result screens.

### 2. Login & Register UI Showcase

A comprehensive showcase featuring nine distinct variants of login and registration screens. This project explores a wide range of design patterns and UI elements for user authentication flows.

#### Features
-   **Nine Unique Variants:** Each with a different layout, color scheme, and aesthetic, from minimalist to complex gradient-based designs.
-   Custom text fields with input validation, icons, and password visibility toggles.
-   Social authentication buttons (Google, Facebook, Apple).
-   Shared widgets for common elements like "Remember Me" checkboxes, dividers, and social login sections to promote code reuse.
-   Use of various background styles, including solid colors, gradients, and split-screen layouts.

#### Tech Stack
-   **Framework:** Flutter
-   **Navigation:** `go_router` to easily navigate between the nine UI variants.
-   **Icons:** `font_awesome_flutter` for a wide variety of icons.
-   **Styling:** `simple_gradient_text` for creating text with gradient colors.

## How to Run a Project

Each project is a standalone Flutter application. To run one, navigate to its directory from your terminal and use the standard Flutter commands.

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/iabdallahm/flutter_ui_practice.git
    cd flutter_ui_practice
    ```

2.  **Navigate to the project you want to run:**
    ```sh
    # For the BMI Calculator
    cd bmi_calaculator_app

    # Or for the Login Screen Showcase
    # cd login_screen
    ```

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

4.  **Run the application:**
    ```sh
    flutter run
    ```

## Repository Structure

This repository is structured as a monorepo, containing multiple independent Flutter projects:
```
.
├── bmi_calaculator_app/     # A complete Flutter app for calculating BMI.
└── login_screen/          # A Flutter app showcasing 9 different login/register UIs.
```
This organization allows for focused development on each application while keeping all UI practice projects together.
