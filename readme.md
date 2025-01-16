# WordPress 6.7 Docker Setup

This guide provides instructions to set up .

---

## Prerequisites

1. Install **Docker** and **Docker Compose** on your machine.
2. Clone reposirory(brand master) https://github.com/vanquang57/nhatminhsport.git
---

## Directory Structure

```
nhatminhsport/
|-- docker-compose.yml
|-- Dockerfile
|-- wordpress/  # Place WordPress source code here
```

---

## Step 1: Build and Run Containers

1. Navigate to the project directory:
   ```bash
   cd nhatminhsport
   ```

2. Build the containers:
   ```bash
   docker-compose build
   ```

3. Start the containers:
   ```bash
   docker-compose up -d
   ```

---

## Step 2: Access WordPress

- Open your browser and visit: [http://localhost:8080](http://localhost:8080)
- Admin account: admin/123456
---

## Step 3: Stop and Remove Containers

To stop and remove the containers:

```bash
docker-compose down
```

---

## Additional Options

### Add phpMyAdmin

To include phpMyAdmin for database management, add the following service to your `docker-compose.yml`:

```yaml
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    container_name: phpmyadmin
    ports:
      - "8081:80"
    environment:
      PMA_HOST: db
      MYSQL_ROOT_PASSWORD: root
```

Access phpMyAdmin at: [http://localhost:8081](http://localhost:8081).

---

## Notes

- Ensure the `wordpress` directory contains the WordPress files.
- If accessing MySQL remotely, ensure port `3306` is open in your firewall.

---

Feel free to customize this setup based on your requirements!

