
# Smart Restaurant with Spring Boot, PosgreSQL, JPA, Hibernate and Docker

## Steps to Setup

# Clone the application**

```bash
https://github.com/raselahmedb/spring-boot-smart-restaurant.git
```
## Run the System
Run the following command:

```bash
docker-compose up
```

## Stop the System
To stop all running containers, use this command:

```bash
docker-compose down
```

Alternatively, you can run the app without packaging it using -

```bash
mvn spring-boot:run
```

Your application will run at:

Eclipse: <http://localhost:8080>

Docker: <http://localhost:6868>

## Explore Rest APIs

The app defines following CRUD APIs.
	 
   -- POST /api/v1/customers
    
    GET /api/v1/customers
    
  --  POST /api/v1/menuitems
    
    GET /api/v1/menuitems
    
    POST /api/v1/order
    
    GET /api/v1/order/currentDay
    
    GET /api/v1/order/totalSaleAmountCurrentDay
    
    GET /api/v1/order/customer/1
    
    GET /api/v1/order/maxSaleDay?startDate=2021-01-01&endDate=2025-01-01
    
 