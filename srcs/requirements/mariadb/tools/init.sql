CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'wp_user'@'%' IDENTIFIED BY 'your_password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'%';
FLUSH PRIVILEGES;
