
# Project
India has a Right to information act, which allows any citizen to acquire government records by making a request , this project is a tool to curate all requests , so anyone can see all the RTI's at a single place and keep the governance accountable.

### Setup  
```bundle install```
```rails rails_admin:install```   
```rails generate ckeditor:install```   
```rails assets:precompile```
```rails db:setup```
### DB Setup 
```DROP SCHEMA IF EXISTS rtidatabase;
CREATE SCHEMA rtidatabase;
DROP USER 'rtidatabase'@'%' ;
CREATE USER 'rtidatabase'@'%' IDENTIFIED BY 'rtidatabase';
GRANT ALL ON rtidatabase.* TO 'rtidatabase'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'rtidatabase'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

ALTER DATABASE rtidatabase CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE rtidatabase;
SELECT DATABASE();

```

### Author
Vinayak srinivas [Linkedin](https://linkedin.com/in/vinayakcs)

### License
Creative Commons Attribution (CC BY)