dnf update -y
sudo su
dnf install httpd
systemctl start httpd
systemctl enable httpd
dnf install mariadb-server
systemctl start mariadb
systemctl enable mariadb
mysqladmin -u root password 'root'
dnf install php php-mbstring php-pear
printf '<?php phpinfo(); ?>' > /var/www/html//teste.php
systemctl restart httpd
xdg-open http://localhost/
dnf install phpmyadmin
systemctl restart httpd
xdg-open http://localhost/phpmyadmin/
