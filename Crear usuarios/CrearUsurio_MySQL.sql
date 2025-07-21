create user 'nombreusuario'@'localhost' identified by 'lapassword';

grant all privileges on *.* to 'nombreusuario'@'localhost' with grant option;

flush privileges;