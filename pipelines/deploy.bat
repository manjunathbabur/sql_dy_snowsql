@echo off
REM Set environment variables
set SNOWFLAKE_ACCOUNT=%1
set SNOWFLAKE_USER=%2
set SNOWFLAKE_PASSWORD=%3
set SNOWFLAKE_DATABASE=%4
set SNOWFLAKE_SCHEMA=%5
set SNOWFLAKE_WAREHOUSE=%6
set SQL_FILE=%7

REM Check if all arguments are provided
if "%SNOWFLAKE_ACCOUNT%"=="" (
    echo "Error: Snowflake account is missing."
    exit /b 1
)
if "%SNOWFLAKE_USER%"=="" (
    echo "Error: Snowflake user is missing."
    exit /b 1
)
if "%SNOWFLAKE_PASSWORD%"=="" (
    echo "Error: Snowflake password is missing."
    exit /b 1
)
if "%SNOWFLAKE_DATABASE%"=="" (
    echo "Error: Snowflake database is missing."
    exit /b 1
)
if "%SNOWFLAKE_SCHEMA%"=="" (
    echo "Error: Snowflake schema is missing."
    exit /b 1
)
if "%SNOWFLAKE_WAREHOUSE%"=="" (
    echo "Error: Snowflake warehouse is missing."
    exit /b 1
)
if "%SQL_FILE%"=="" (
    echo "Error: SQL file path is missing."
    exit /b 1
)

REM Execute the SnowSQL command
snowsql -a %SNOWFLAKE_ACCOUNT% ^
        -u %SNOWFLAKE_USER% ^
        -p %SNOWFLAKE_PASSWORD% ^
        -d %SNOWFLAKE_DATABASE% ^
        -s %SNOWFLAKE_SCHEMA% ^
        -w %SNOWFLAKE_WAREHOUSE% ^
        -f %SQL_FILE%

REM Check if the SnowSQL command was successful
if %ERRORLEVEL% NEQ 0 (
    echo "Error: SnowSQL execution failed."
    exit /b %ERRORLEVEL%
)

echo "SQL deployment completed successfully."
exit /b 0
