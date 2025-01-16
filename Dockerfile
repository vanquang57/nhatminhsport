# Sử dụng hình ảnh WordPress 6.7 chính thức làm base image
FROM wordpress:6.7

# Copy toàn bộ mã nguồn vào container
COPY ./wordpress /var/www/html

# Thiết lập quyền truy cập cho thư mục WordPress
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
