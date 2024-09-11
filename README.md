# Order Management System

This is a simple Order Management System built with Spring Boot following the principles of Test-Driven Development (TDD). The system allows users to create, update, view, and delete orders, along with validating input data to ensure data integrity.

## Project Overview

The Order Management System is a RESTful web application that allows users to manage orders with the following features:
- **Create a New Order**: Add a new order with customer details, order date, shipping address, and total amount.
- **Update an Existing Order**: Modify details of an existing order.
- **View Order Details**: Fetch details of an order by its ID.
- **Delete an Order**: Remove an order from the system.
- **Validation**: Ensure that input data such as customer name, shipping address, and total amount meet certain criteria.
- **Error Handling**: Gracefully handle errors like invalid input or operations on non-existent orders.

## Prerequisites

To run and test this project, you need the following installed on your machine:
- **Java 17** (required for Spring Boot 3.x)
- **Maven** (for building the project)
- **IntelliJ IDEA** (or any other IDE of your choice)
- **Postman** (for testing the API endpoints)

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/PatrickxStar/MiniProject.git
Open the Project in IntelliJ IDEA:

Open IntelliJ IDEA.
Select "Open" and navigate to the folder where you cloned the repository.
Open the project folder.
Build the Project:

Ensure that Maven is properly set up.
In IntelliJ IDEA, click on View > Tool Windows > Maven.
Click the "Reload All Maven Projects" button to load dependencies.
Run the Application:

Locate the OrderManagementApplication class in src/main/java/com/example/miniproject.
Right-click on the OrderManagementApplication class and select Run 'OrderManagementApplication'.
The application should start on localhost:8080.
API Usage
Use the following API endpoints to interact with the Order Management System:

1. Create a New Order
   Endpoint: POST /orders
   Request Body:
   json
   Copy code
   {
   "customerName": "John Doe",
   "orderDate": "2024-09-11",
   "shippingAddress": "123 Main St",
   "total": 100.00
   }
   Expected Response: 200 OK with the created order details.
2. Fetch All Orders
   Endpoint: GET /orders
   Expected Response: 200 OK with a list of all orders.
3. Fetch an Order by ID
   Endpoint: GET /orders/{id}
   Example: GET /orders/1
   Expected Response: 200 OK with the order details, or 404 Not Found if the order does not exist.
4. Update an Existing Order
   Endpoint: PUT /orders/{id}
   Request Body:
   json
   Copy code
   {
   "customerName": "Jane Doe",
   "orderDate": "2024-09-12",
   "shippingAddress": "456 Elm St",
   "total": 150.00
   }
   Expected Response: 200 OK with the updated order details, or 404 Not Found if the order does not exist.
5. Delete an Order
   Endpoint: DELETE /orders/{id}
   Example: DELETE /orders/1
   Expected Response: 200 OK if the order is successfully deleted, or 404 Not Found if the order does not exist.
   Testing Instructions
   Running Unit and Integration Tests
   Run Tests in IntelliJ IDEA:

Go to src/test/java/com/example/miniproject.
Right-click on OrderRepositoryTest and OrderControllerTest classes.
Select Run 'OrderRepositoryTest' and Run 'OrderControllerTest'.
Test Validations:

Use Postman to send requests with invalid data:
Test empty fields for customerName and shippingAddress.
Test negative values for total.
Expected responses should return 400 Bad Request with appropriate validation error messages.
Running Tests in Command Line
Open Terminal:

Navigate to the project directory.
Run Maven Tests:

bash
Copy code
mvn test
Check Results:

Ensure all tests pass with no errors.
Packaging and Deployment
Package the Application:

Open the terminal in IntelliJ IDEA.
Run the following command to create an executable JAR file:
bash
Copy code
mvn clean package
This will generate a JAR file in the target directory.
Run the JAR File:

To run the packaged application, execute the following command:
bash
Copy code
Error Handling
The application includes error handling for the following scenarios:

Validation Errors: If input data does not meet the validation constraints, a 400 Bad Request response is returned with details of the validation errors.
Resource Not Found: If an operation is attempted on a non-existent order, a 404 Not Found response is returned.