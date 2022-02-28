I added a development and production environments for (this) application.  
The development environment uses two different Docker containers to separate the server and the client.  
The production environment uses only one Docker container to serve the React build folder using Express server.