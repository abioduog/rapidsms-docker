# RapidSMS Docker Setup

This project sets up RapidSMS using Docker.

## Setup Instructions

### Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Step-by-Step Guide

1. **Clone the repository:**

    ```sh
    git clone https://github.com/abioduog/rapidsms-docker.git
    cd rapidsms-docker
    ```

2. **Build and start the containers:**

    ```sh
    docker-compose up --build
    ```

3. **Apply migrations:**

    ```sh
    docker-compose run web python manage.py migrate
    ```

4. **Create a superuser:**

    ```sh
    docker-compose run web python manage.py createsuperuser
    ```

5. **Access the application:**

    - RapidSMS Application: [http://localhost:8000](http://localhost:8000)
    - Django Admin Interface: [http://localhost:8000/admin](http://localhost:8000/admin)

### Project Structure

rapidsms-docker/
├── Dockerfile
├── README.md
├── docker-compose.yml
├── manage.py
├── myproject/
│ ├── init.py
│ ├── asgi.py
│ ├── settings.py
│ ├── urls.py
│ └── wsgi.py
├── requirements.txt
├── setup_project.sh
└── ...


### Environment Variables

Create a `.env` file in the root directory with the following content:

```env
SECRET_KEY=your_secret_key
DEBUG=True
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]
DATABASE_URL=postgres://rapidsms_user:secret@db:5432/rapidsms

Additional Commands
Stop containers:
docker-compose down

View logs:
docker-compose logs

Enter a running container:
docker-compose exec web /bin/bash

Troubleshooting
If you encounter any issues, check the logs for more details:
docker-compose logs web
docker-compose logs db

Contributing
Feel free to submit issues or pull requests if you find any bugs or have new features to propose.

License
This project is licensed under the BSD License. See the LICENSE file for more details.

### Step 8: Commit and Push the README

Add the `README.md` to your Git repository and push it to GitHub:

```sh
git add README.md
git commit -m "Add README with setup instructions"
git push
