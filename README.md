# sql_dy_snowsql# Snowflake CI/CD Pipeline

This repository contains SQL scripts and Jenkins pipeline configurations for deploying to Snowflake.

## Repository Structure
- `sql/`: Contains SQL files to be deployed to Snowflake.
- `pipelines/`: Jenkins pipeline and optional shell script for deployment.
- `configs/`: Configuration template for SnowSQL.

## Prerequisites
1. Install SnowSQL: [Download Here](https://docs.snowflake.com/en/user-guide/snowsql.html).
2. Install Jenkins on Windows.
3. Configure Jenkins plugins (Git, Pipeline).
4. Set up your Snowflake account credentials.

## How to Use
1. Clone the repository:
   ```bash
   git clone <repository_url>
