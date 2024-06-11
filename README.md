# MyProject

This is a Django project configured with RapidSMS.

## Setup Instructions

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/abioduog/rapidsms-project.git
   cd rapidsms-project
   ```

2. **Create and Activate a Virtual Environment**:
   ```sh
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install Dependencies**:
   ```sh
   pip install -r requirements.txt
   ```

4. **Run Migrations**:
   ```sh
   cd myproject
   python manage.py migrate
   ```

5. **Create a Superuser**:
   ```sh
   python manage.py createsuperuser
   ```

6. **Run the Development Server**:
   ```sh
   python manage.py runserver
   ```

7. **Access the Application**:
   Open a web browser and go to `http://127.0.0.1:8000/admin` to access the admin interface.
   
