# sql-challenge

## Pewlett Hackard Employee Research

This project involves analyzing employee data from Pewlett Hackard during the 1980s and 1990s. The project is divided into three parts: Data Modelling, Data Engineering, and Data Analysis. The data is provided in six CSV files, and the objective is to model, engineer, and analyze this data to derive meaningful insights.

### Prerequisites

- PostgreSQL installed on your local machine.
- A database client like pgAdmin.

### Tools and Technologies

- PostgreSQL for database management.
- QuickDBD or similar tool for creating ERDs.
- SQL for querying the database.
- CSV files for the initial data source.

### Installation

1. Clone the repository
2. Set up the PostgreSQL database.
3. Create table schema for each csv file using scripts from 'employees_schema.sql'.
4. Import each CSV file into it's corresponding table.

### Running the Queries

- Execute the SQL queries provided in the queries.sql file to perform the data analysis tasks.

### File Structure

```
EmployeeSQL/
├── Resources/
│   ├── departments.csv
│   ├── dept_emp.csv
│   ├── dept_manager.csv
│   ├── employees.csv
│   ├── salaries.csv
│   └── titles.csv
├── employees_schema.sql
├── employees.png
├── queries.sql
└── README.md
```
