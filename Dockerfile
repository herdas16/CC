FROM python:3.9-slim  # Base image with Python 3.9

WORKDIR /app  # Set working directory

COPY requirements.txt requirements.txt  # Copy requirements file

RUN pip install --upgrade pip
RUN pip install -r requirements.txt  # Install dependencies

COPY . .  # Copy all project files

EXPOSE 5000  # Expose port for Flask app

CMD ["python", "app.py"]  # Run the app
