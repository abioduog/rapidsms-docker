#!/bin/bash

# Navigate to your project directory
cd /Users/abiodunogunlabi/Documents/rapidsms

# Create .gitignore
touch .gitignore

# Add content to .gitignore
echo "*.pyc
__pycache__/
db.sqlite3
.env
venv/
.DS_Store" > .gitignore

# Generate requirements.txt
pip freeze > requirements.txt

# Initialize Git repository
git init

# Add all files to Git
git add .

# Commit changes
git commit -m "Initial commit"

# Add GitHub remote (replace with your repository URL)
git remote add origin https://github.com/abioduog/rapidsms-project.git

# Push to GitHub
git push -u origin master

# Create README.md
touch README.md

# Add setup instructions to README.md
echo "# MyProject

This is a Django project configured with RapidSMS.

## Setup Instructions

1. **Clone the Repository**:
   \`\`\`sh
   git clone https://github.com/abioduog/rapidsms-project.git
   cd rapidsms-project
   \`\`\`

2. **Create and Activate a Virtual Environment**:
   \`\`\`sh
   python3 -m venv venv
   source venv/bin/activate
   \`\`\`

3. **Install Dependencies**:
   \`\`\`sh
   pip install -r requirements.txt
   \`\`\`

4. **Run Migrations**:
   \`\`\`sh
   cd myproject
   python manage.py migrate
   \`\`\`

5. **Create a Superuser**:
   \`\`\`sh
   python manage.py createsuperuser
   \`\`\`

6. **Run the Development Server**:
   \`\`\`sh
   python manage.py runserver
   \`\`\`

7. **Access the Application**:
   Open a web browser and go to \`http://127.0.0.1:8000/admin\` to access the admin interface.
" > README.md

# Add README.md to Git
git add README.md

# Commit README.md
git commit -m "Add README with setup instructions"

# Push to GitHub
git push

