# OrbitCRM - Backend🚀

OrbitCRM's backend is built using Node.js and Express, and MongoDB for data storage, it follows the MVC architecture to ensure scalability, maintainability, and separation of concerns. The application offers a user-friendly API for managing customer data and leads, making it easy to extend and integrate with other systems.

# Features🌟 
- ✨ User-friendly API: Clean and intuitive routes for managing customer data.
- 🔗 Modular Architecture: Well-organized structure supports easy scaling.
- 🔒 Secure Environment Configuration: .env file manages sensitive values.
- 💡 Customizable: Extendable architecture for adding additional features.

 ## Project Structure 🗂️

```
OrbitCRM/
├── controllers/       # Contains business logic
├── models/            # Database schema definitions
├── routes/            # API routes
├── node_modules/      # Installed Node.js dependencies
├── .env               # Secure environment variables
├── app.js             # Initializes Express and middleware
├── server.js          # Starts the server
├── package.json       # Project metadata and dependencies
├── package-lock.json  # Dependency lock file
├── README.md          # Project documentation
```

# Getting Started 🚀
## Follow these steps to set up and run the project locally.

## Prerequisites 📋
Node.js (v14+)
npm (v7+) or yarn
A MongoDB instance 

## Installation 🛠️

## Clone the repository:

```
git clone https://github.com/Kingestif/CRM.git
```

## Install dependencies:

```
npm install
```

## Start the server:

```
npm start
```

Visit the app at http://localhost:3000.


# Usage 📖
## Routes & API Endpoints 

- `/api/v1/contacts` - For contacts
- `/api/v1/leads` - For Leads
- `/api/v1/admin` - For Admins
- `/api/v1/both` - Dedicated for both contact and leads

# Development 🧪
## Use nodemon for easier development:

```
npm run dev
```

# Contributing 🤝
Contributions are welcome!

- Fork the repository.
- Create a new branch:

```
git checkout -b feature/your-feature-name
```

- Commit your changes and push the branch:

```
git commit -m "Add your feature"
git push origin feature/your-feature-name
```
- Create a pull request.

# License 📜
This project is licensed under the [MIT License](./LICENSE). See the LICENSE file for details.

# Contact 📬
If you have any questions or suggestions:

- Name: Estifanos Zinabu
- Email: estifanoszinabuabebe@gmail.com
- GitHub: Kingestif
