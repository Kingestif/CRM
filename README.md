# OrbitCRM 🚀
OrbitCRM is a robust, cross-platform Customer Relationship Management (CRM) application designed to streamline customer interactions and data management. The system comprises a Flutter-based frontend and a Node.js + Express backend, adhering to the Clean Architecture principles for enhanced maintainability and scalability.

# Table of Contents
1. Features
2. Architecture Overview
3. Project Structure
4. Getting Started
5. Usage
6. Development
7. Contributing
8. License
9. Contact
    
# Features 🌟
- User-Friendly Interface: Intuitive UI for efficient customer management.
- Cross-Platform Compatibility: Accessible on Android, iOS, Web, Windows, macOS, and Linux.
- Secure Authentication: Implements Firebase Authentication for robust user security.
- Modular Architecture: Clean separation of concerns facilitating scalability and maintenance.
- RESTful API Integration: Seamless communication between frontend and backend.
- Architecture Overview 🏗️
- OrbitCRM employs Clean Architecture to ensure a clear separation of concerns, enhancing testability and scalability.

## Frontend (Flutter)
- Presentation Layer: Manages UI components and user interactions.
- Domain Layer: Contains business logic and entities.
- Data Layer: Handles data retrieval and storage, including API communication.
  
## Backend (Node.js + Express + MongoDB)
- Controller Layer: Manages incoming HTTP requests and responses.
- Service Layer: Contains business logic and interacts with the data layer.
- Data Layer: Manages database operations and data models.
- Authentication
- Firebase Authentication: Provides secure user authentication services, supporting various sign-in methods.
  
## Project Structure 🗂️

```
OrbitCRM/
├── frontend/
│   ├── lib/
│   │   ├── authentication/   # Firebase authentication logic
│   │   ├── core/             # Shared utilities and configurations
│   │   ├── features/         # Feature modules (e.g., contacts, leads)
│   │   ├── main.dart         # Application entry point
│   ├── pubspec.yaml          # Flutter dependencies
│   └── README.md             # Frontend documentation
├── backend/
│   ├── controllers/          # Request handlers
│   ├── models/               # Database schemas
│   ├── routes/               # API routes
│   ├── services/             # Business logic
│   ├── app.js                # Express app setup
│   ├── server.js             # Server initialization
│   ├── package.json          # Node.js dependencies
│   └── README.md             # Backend documentation
├── README.md                 # Unified project documentation
└── LICENSE                   # License information
```

# Getting Started 🚀
## Prerequisites 📋
- Flutter SDK: v3.0+
- Node.js: v14+
- npm: v7+ or yarn
- Firebase Account: For authentication services
- MongoDB: For data storage

# Installation 🛠️
1. Clone the repository:

```
git clone https://github.com/Kingestif/CRM.git
```
2. Backend Setup:
- Navigate to the backend directory:

```
cd CRM/backend
```

- Install dependencies:

```
npm install
```

- Start the backend server:

```
npm start
```

3. Frontend Setup:

- Navigate to the frontend directory:

```
cd ../frontend
```

- Install dependencies:

```
flutter pub get
```

Configure Firebase:
Follow the Firebase setup guide for Flutter to add your app to Firebase.
Enable Authentication in the Firebase console and configure the desired sign-in methods.
  
- Update the backend API URL in the frontend configuration:
```
const String apiUrl = 'http://localhost:3000/api/v1';
```

- Run the app:

```
flutter run
```

# Usage 📖
## Authentication
- Sign Up: Register a new account using email and password.
- Sign In: Access your account with registered credentials.
- Sign Out: Securely log out from the application.
  
## Managing Contacts and Leads
- View: Browse existing contacts and leads.
- Add: Create new contacts or leads.
- Edit: Update information of existing entries.
- Delete: Remove contacts or leads as needed.
  
# Development 🧪
## Backend
- Development Server: Utilize nodemon for automatic server restarts:

```
npm run dev
```

Testing: Implement tests using your preferred testing framework.

## Frontend
- Hot Reload: Leverage Flutter's hot reload feature for rapid UI development:

```
flutter run
```

## Testing: Execute unit and widget tests:

```
flutter test
```

# Contributing 🤝
Contributions are welcome! To contribute:

1. Fork the repository.

2. Create a new branch:

```
git checkout -b feature/your-feature-name
```

3. Commit your changes:

```
git commit -m "Add your feature"
```

4. Push to your branch:
   
```
git push origin feature/your-feature-name
```

5. Open a pull request for review.

# License 📜
This project is licensed under the [MIT License](./LICENSE). See the LICENSE file for details.

# Contact 📬
For any questions or suggestions:

- Name: Estifanos Zinabu
- Email: estifanoszinabuabebe@gmail.com
- GitHub: Kingestif

# Demos
![image1](https://github.com/user-attachments/assets/f751c28a-0514-443e-95de-e67d44ec8fdf)
![image2](https://github.com/user-attachments/assets/81981a52-3189-421f-b53c-b9dfa804179e)
![image3](https://github.com/user-attachments/assets/3f566a7c-6505-43fd-995f-ceb33ae38fd3)
![image4](https://github.com/user-attachments/assets/9c3d9dae-79a5-4de7-ad38-16fb1c995364)
![image5](https://github.com/user-attachments/assets/e24f15f5-8c60-4075-8627-ed58d26f0942)

