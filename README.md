## Project Structure

The project is divided into several components:

### Model

- **UserEntry.java**: This class represents a user entry with an ID, email, name, and password. The `idSeed` static variable ensures each user has a unique ID.

### Servlets

- **Login.java**: Handles user login requests. It verifies credentials against the stored users and manages user sessions. Redirects authenticated users to the download page and handles errors for invalid login attempts.

- **Logout.java**: Manages user logout functionality. It invalidates the current user session and redirects to the login page.

- **Register.java**: Handles user registration requests. It validates input fields, creates new user entries, and stores them. Redirects to the login page upon successful registration.

- **Download.java**: Redirects authenticated users to the file download page. Ensures users are logged in before granting access.

### JSP Pages

- **index.jsp**: The login page where users can enter their credentials to access the system. Displays error messages for invalid login attempts and includes a link to the registration page.

- **Register.jsp**: The registration page where new users can create an account. Displays error messages for incomplete or invalid registration forms.

- **Download.jsp**: The page where authenticated users can view and download files. Displays a list of files with previews and download links, and includes a logout button.

### How It Works

- **Registering a User**: Navigate to the `Register.jsp` page, fill out the registration form, and submit it to create a new user account.

- **Logging In**: Use the `index.jsp` page to enter your credentials and log in. Upon successful login, you will be redirected to the `Download.jsp` page.

- **Downloading Files**: On the `Download.jsp` page, view available files with previews and download links. Files are accessible only to logged-in users.

- **Logging Out**: Click the logout button on the `Download.jsp` page to end your session and return to the `index.jsp` login page.

### How to Run

1. **Setup**: Ensure you have a Java Servlet container (e.g., Apache Tomcat) set up.

2. **Deployment**: Download or import the project into your IDE and select "Run on Server."

3. **Access**: Navigate to the application URL (e.g., `http://localhost:8080/LoginSession/`) to interact with the downloadable pictures.
