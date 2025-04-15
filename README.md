# dbt-SQL Server Connection Demonstration

This project demonstrates how to connect to a SQL Server Data Warehouse using dbt (Data Build Tool). It includes a virtual environment (VE) setup, data extraction, and three example models. Tests are also provided to validate the models' functionality and data accuracy.

## Table of Contents

- [About the Project](#about-the-project)
- [Setup](#setup)
- [Usage](#usage)
- [Models](#models)
- [Tests](#tests)

## Setup

### Prerequisites

- Python 3.7 or higher
- dbt-core installed
- dbt sqlserver
- Access to a SQL Server instance

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/dafinest/Dbt-SqlServer

2. Set up and activate VE
   python -m venv env
   source env/bin/activate   # For Windows: env\Scripts\activate

3. Install dependencies
   pip install -r requirements.txt

4. Setup your profiles.yml with SQL Server credentials
   sqlserver_demo:
   target: dev
   outputs:
    dev:
      type: sqlserver
      server: <your_server>
      database: <your_database>
      schema: <your_schema>
      user: <your_username>
      password: <your_password>

5. Run several Dbt commands
   dbt ini
   dbt debug
   dbt run
   dbt compile
   dbt list
   dbt test
   dbt docs generate
   dbt docs serve
