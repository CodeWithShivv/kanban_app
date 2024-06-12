**Kanban App MVP**

**A Comprehensive Project Management Tool Built with Flutter**

This Kanban app MVP  empowers you to streamline your project management with visual task boards, seamless collaboration, and efficient task organization. Leverage the power of Flutter to create a beautiful and cross-platform experience for your team.

**Key Features:**

-   **Intuitive Kanban boards:** Manage tasks using visually appealing drag-and-drop boards, facilitating clear task organization and flow.
-   **Task management:** A kanban board for tasks, where users can create, edit, and move tasks
between different columns (e.g. "To Do", "In Progress", "Done").

-   **Collaborative environment:** Fosters teamwork with features like task comments and history tracking.
-   **Error reporting:** Implements a robust error handling mechanism to identify and address app issues effectively.
-   **Event tracking:** Tracks user interactions with boards, tasks, and comments using Firebase Analytics for valuable insights.
-   **Firebase integration:** Leverages Firebase for potential authentication, analytics, and database features (implementation details can be customized).
-   **Integration with Todoist API:** Utilizes available services from [Todoist API](https://developer.todoist.com/rest/v2/#overview) for additional functionalities.
-   **Task Time Traking Function using Labels field in app :** The app dynamically updates task labels (e.g., "In Progress", "Done", "To Do") based on their status within the Kanban board, along with corresponding start and end times.
**Project Structure:**

```
kanban_app/

├── lib/  # Core application code

│   ├── bloc/  # Business logic layer using BLoC pattern

│   │   ├── boards/

│   │   │   ├── add_board/  # BLoC events and states for adding boards

│   │   │   ├── board_task_comment/  # BLoC events and states for managing board task comments

│   │   │   ├── board_tasks.dart  # BLoC events and states for managing board tasks

│   │   │   └── boards_list/  # BLoC events and states for managing the list of boards

│   │   └── theme/  # BLoC events and states for managing the app's theme

│   ├── data/

│   │   ├── models/  # Data models for tasks, boards, and comments

│   │   ├── repositories/  # Data access layer for fetching and manipulating data

│   │   ├── services/  # Services for network communication, error reporting, and event tracking

│   ├── presentation/  # User interface components

│   │   ├── pages/  # Screens for boards, tasks, and task history

│   │   ├── widgets/  # Reusable UI components

│   ├── router/  # Navigation router implementation (using **go_router**)

│   └── dependency_locator.dart  # Dependency injection configuration (using **get_it**)

├── firebase_options.dart  # Firebase configuration file (generated by Firebase CLI)

├── pubspec.yaml  # Project dependencies and configurations
```

**Technologies Used:**

-   **Flutter:** Cross-platform app development framework
-   **Provider:** State management solution
-   **intl:** Internationalization support
-   **equatable:** Simplifies data object comparisons
-   **dio:** HTTP client for network requests
-   **get_it:** **Dependency injection library** for managing dependencies
-   **go_router:** **Navigation router** for efficient navigation within the app
-   **cupertino_icons:** Provides Cupertino icon set
-   **infinite_scroll_pagination:** Enables infinite scrolling for long lists
-   **flutter_boardview:** Kanban board visualization widget
-   **freezed_annotation:** Code generation for immutable data classes
-   **json_annotation:** Code generation for JSON serialization/deserialization
-   **flutter_bloc:** State management using BLoC pattern
-   **flutter_dotenv:** Environment variable management
-   **skeletonizer:** Placeholder loading for UI elements
-   **firebase_core:** Core Firebase SDK
-   **firebase_crashlytics:** Crash reporting for Firebase
-   **firebase_analytics:** App analytics for Firebase
-   **flutter_test:** Unit testing framework for Flutter apps
-   **build_runner:** Code generation tool (for freezed and json_serializable)
-   **json_serializable:** JSON serialization/deserialization (used with freezed)
-   **freezed:** Creates immutable data classes

**Getting Started:**

1.  **Clone the repository:**

    Bash

    ```
    git clone https://github.com/your-username/kanban_app.git

    ```

    Use code [with caution.](/faq#coding)

    content_copy

2.  **Install dependencies:**

    Bash

    ```
    cd kanban_app
    flutter pub get

    ```

    Use code [with caution.](/faq#coding)

    content_copy

3.  **Configure Firebase (optional):**
    -   Follow Firebase setup instructions to create a project and configure the app.
    -   Replace placeholder values in `firebase_options.dart` with your project credentials.

**Running the App:**

1.  Connect your device or launch an emulator.
2.  Run the app in development mode:

    Bash

    ```
    flutter run

    ```

    Use code [with caution.](/faq#coding)

    content_copy

**ScreenShots**
<img width="352" alt="Screenshot 2024-06-12 at 9 55 20 PM" src="https://github.com/CodeWithShivv/kanban_app/assets/83440338/a0bb9ea4-1052-41a9-b73e-087e87e18bd5">

<img width="404" alt="Screenshot 2024-06-12 at 9 56 50 PM" src="https://github.com/CodeWithShivv/kanban_app/assets/83440338/21157801-5bb5-46ca-88ec-429dc46297f2">

<img width="402" alt="Screenshot 2024-06-12 at 9 57 07 PM" src="https://github.com/CodeWithShivv/kanban_app/assets/83440338/b6b9c5b6-5afc-44ca-a0d0-072902df878d">
<img width="397" alt="Screenshot 2024-06-12 at 9 57 29 PM" src="https://github.com/CodeWithShivv/kanban_app/assets/83440338/0d886590-64a8-45b2-86b1-cc80e3de1979">

<img width="408" alt="Screenshot 2024-06-12 at 9 57 51 PM" src="https://github.com/CodeWithShivv/kanban_app/assets/83440338/38e6bacd-e1ee-4347-875c-5f0845c23be8">

**Video**


https://github.com/CodeWithShivv/kanban_app/assets/83440338/33749a54-7074-4c12-ac1f-37337db1b5fd



**Contributing:**

1.  Fork the repository on GitHub.
2.  Create a feature branch for your changes.
3.  Write clean and well-documented code.
4.  Submit a pull request for review.

**License:**

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).
