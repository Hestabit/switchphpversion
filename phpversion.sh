echo "Enter the php version you want enable"
read phpenable
echo "Enter the php version you want to disable"
read phpdisable
if [ "$phpenable" = "5.6" ]
then
       
    sudo apt install -y php5.6 php5.6-curl php5.6-mysql libapache2-mod-php5.6 \
php5.6-bcmath php5.6-curl php5.6-gd php5.6-intl php5.6-mbstring php5.6-mcrypt \
php5.6-soap php5.6-xml php5.6-xsl php5.6-zip php5.6-json libapache2-mod-php5.6
    sudo a2dismod php$phpdisable
    sudo a2enmod  php5.6
    sudo update-alternatives --set php /usr/bin/php5.6
    sudo service apache2 restart

elif [ "$phpenable" = "7.0" ]
then
    sudo apt install -y php7.0 php7.0-curl php7.0-mysql libapache2-mod-php7.0 \
        php7.0-bcmath php7.0-curl php7.0-gd php7.0-intl php7.0-mbstring php7.0-mcrypt \
        php7.0-soap php7.0-xml php7.0-xsl php7.0-zip php7.0-json  libapache2-mod-php7.0
    sudo a2dismod php$phpdisable 
    sudo a2enmod  php7.0 
    sudo update-alternatives --set php /usr/bin/php7.0
    sudo service apache2 restart

elif [ "$phpenable" = "7.1" ]
then
    sudo apt install -y php7.1 php7.1-curl php7.1-mysql libapache2-mod-php7.1 \
    php7.1-bcmath php7.1-curl php7.1-gd php7.1-intl php7.1-mbstring php7.1-mcrypt \
    php7.1-soap php7.1-xml php7.1-xsl php7.1-zip php7.1-json  libapache2-mod-php7.1
    sudo a2dismod php$phpdisable 
    sudo a2enmod  php7.1 
    sudo update-alternatives --set php /usr/bin/php7.1
    sudo service apache2 restart

elif [ "$phpenable" = "7.2" ]
then

    sudo apt install -y php7.2 php7.2-curl php7.2-mysql libapache2-mod-php7.2 \
        php7.2-bcmath php7.2-curl php7.2-gd php7.2-intl php7.2-mbstring  \
        php7.2-xml php7.2-xsl php7.2-zip php7.2-json libapache2-mod-php7.2
    sudo a2dismod php$phpdisable 
    sudo a2enmod  php7.2 
    sudo update-alternatives --set php /usr/bin/php7.2
    sudo service apache2 restart

elif [ "$phpenable" = "7.3" ]
then 
    sudo apt-get install libapache2-mod-php7.3
    sudo apt install -y php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl \ 
    php7.3-gd  php7.3-mysql php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring \
     php7.3-opcache php7.3-soap php7.3-zip php7.3-intl 
    sudo a2dismod php$phpdisable
    sudo a2enmod  php7.3
        sudo update-alternatives --set php /usr/bin/php7.3
sudo service apache2 restart

else
  echo "There is something wrong"
fi
