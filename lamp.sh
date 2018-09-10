dnf update -y
sudo su
dnf install httpd
dnf systemctl start httpd
dnf systemctl enable httpd
dnf install mariadb-server
dnf systemctl start mariadb
dnf systemctl enable mariadb
mysqladmin -u root password 'root'
dnf install php php-mbstring php-pear
printf '<?php phpinfo(); ?>' > /var/www/html//teste.php
dnf systemctl restart httpd
xdg-open http://localhost/
dnf install phpmyadmin
dnf systemctl restart httpd
xdg-open http://localhost/phpmyadmin/
