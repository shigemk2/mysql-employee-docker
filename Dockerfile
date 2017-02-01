FROM mysql:latest
MAINTAINER shigemk2 i.am.shige@gmail.com

ADD test_db/employees.sql /docker-entrypoint-initdb.d/

ADD test_db/load_departments.dump /docker-entrypoint-initdb.d/
ADD test_db/load_dept_emp.dump /docker-entrypoint-initdb.d/
ADD test_db/load_dept_manager.dump /docker-entrypoint-initdb.d/
ADD test_db/load_employees.dump /docker-entrypoint-initdb.d/
ADD test_db/load_salaries1.dump /docker-entrypoint-initdb.d/
ADD test_db/load_salaries2.dump /docker-entrypoint-initdb.d/
ADD test_db/load_salaries3.dump /docker-entrypoint-initdb.d/
ADD test_db/load_titles.dump /docker-entrypoint-initdb.d/
ADD test_db/show_elapsed.sql /docker-entrypoint-initdb.d/

ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306
CMD ["mysqld"]