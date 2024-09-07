# Utilise l'image officielle d'OpenJDK 17
FROM openjdk:17

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier JAR de l'application dans le conteneur
COPY SimpleServer.jar /app/SimpleServer.jar

# Copie le répertoire lib contenant les JAR nécessaires dans le conteneur
COPY lib /app/lib

# Définit la commande par défaut pour exécuter l'application
CMD ["java", "-cp", "SimpleServer.jar:lib/*", "SimpleServer"]

