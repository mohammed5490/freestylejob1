# Use official Tomcat image
FROM tomcat:10.1-jdk21

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat webapps
COPY /var/lib/jenkins/workspace/java-maven\ build/target/myapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
