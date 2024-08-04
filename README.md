## About 
> GreenGuardians is an e-commerce platform which allows users to buy fertilizers and pesticides. It is built using HTML, CSS, JavaScript, Java, Hibernate and MySQL.Also this is a maven project.


## 🚀Features

- Register
- Login
- View, Add, Update, Delete Categories
- View, Add, Update, Delete Products
- Place order

## 🧑🏻‍💻User Guide
### Steps to run project

1. Download JDK 21
2. Download MySQL version 8
3. Also download MySQL workbench for easier access of database.
4. Create a Database named 'gguardians'
5. Import 'gguardians.sql'
6. Open project in your prefered IDE, in this case I have used Apache Netbeans.
7. Configure project properties.
8. Configure pom.xml file to manage dependencies.
9. Now in hibernate.cfg.xml file, replace username and password of database. In place of 'omkar' write your username and password -
 
    ```sh 
    <property name="connection.url">jdbc:mysql://localhost:3306/gguardians</property>        
    <property name="connection.username">omkar</property>        
    <property name="connection.password">omkar</property> 
    ```

10. And you are good to go.



## Default accounts

| Account | Email | Password |
| ------ | ------ | ----- |
| Admin | admin@gmail.com | 1234 |
| User | user@gmail.com | 4321 |

## Authors
This project was originally created by [Omkar-Kambire](https://github.com/Omkar-Kambire).
