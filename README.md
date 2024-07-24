# 🛠️ API Service Component for iOS App

## 🏗️ APIComponent Structure

API service component is a library that handles all the network calls and interactions with remote servers.

- **APIService**: This file contains the main class for handling API requests. It manages the URLSession and performs the network calls. ![🌐]
- **APIEndPoints**: This file defines all the endpoints for the API. It often uses an enum to manage different endpoints, making it easier to maintain and extend. ![🔗]
- **DataModel**: This file includes the data models that conform to Codable or Decodable. These models are used to parse the JSON responses from the API. ![📊]
- **APIError**: This file defines custom error types to handle various error scenarios, making it easier to manage errors and provide meaningful messages to the user. ![❗]
- **HTTPMethods**: An enumeration named HTTPMethod that defines common HTTP methods such as GET, POST, PUT, DELETE, and PATCH. ![⚙️]
- **NetworkConstants**: This file defines:
  - Constant string that holds the base URL for the API. ![🌍]
  - Constant string for the API key used for authentication. ![🔑]
  - Constant value defining the timeout interval for network requests. ![⏲️]

## ✨ Features

### 🌐 APIService
- Manages the network session using URLSession. ![🛠️]
- Handles the creation and configuration of URLRequest objects. ![📦]
- Parses JSON responses and returns the appropriate data models. ![📬]
- Implements error handling and retries for network failures. ![⚠️]

### 🔗 APIEndPoints
- Defines all the available API endpoints. ![🔗]
- Uses an enum to manage endpoints, allowing for easy additions and modifications. ![📝]
- Provides URL construction with query parameters and path components. ![🔍]

### 📊 DataModel
- Contains data models conforming to Codable or Decodable protocols. ![💾]
- Ensures correct parsing of JSON responses into Swift objects. ![📄]
- Provides easy integration with the rest of the app by using strongly-typed models. ![🔧]

### ❗ APIError
- Defines custom error types for handling API errors. ![❗]
- Differentiates between various error scenarios such as network errors, parsing errors, and server errors. ![🛑]
- Allows for providing meaningful error messages to the user. ![💬]

### ⚙️ HTTPMethods
- Enumerates common HTTP methods: GET, POST, PUT, DELETE, and PATCH. ![⚙️]
- Provides a type-safe way to specify HTTP methods in API requests. ![🔧]

### 🌍 NetworkConstants
- Defines the base URL for the API. ![🌍]
- Includes the API key for authentication. ![🔑]
- Sets the timeout interval for network requests to ensure responsiveness. ![⏲️]
