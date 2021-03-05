

Reference: https://github.com/spring-petclinic/spring-framework-petclinic

#run postgres image
docker run --name postgres-petclinic -e POSTGRES_PASSWORD=petclinic -e POSTGRES_DB=petclinic -p 5432:5432 -d postgres:9.6.0

# run a sample web app
docker run -p 8080:8080 springcommunity/spring-framework-petclinic
