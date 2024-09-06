# Utiliser une image de base Python officielle
FROM python:3.9-slim

RUN apt-get update -y && apt-get upgrade -y

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances et installer les dépendances
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copier le reste du code source du projet dans le conteneur
COPY . .

WORKDIR /app/bot

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8080

# Commande pour exécuter l'application
#CMD ["python", "main.py"]
