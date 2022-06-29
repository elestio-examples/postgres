# Postgres on Elestio with CI/CD

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/docker-compose-mysql"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Example CI/CD pipeline showing how to deploy a postgres instance to elestio.

# Once deployed ...

You can can open pgAdmin web UI here:

    https://[CI_CD_DOMAIN]/
    Login: [ADMIN_EMAIL] (set in env var)
    password: [ADMIN_PASSWORD] (set in env var)


You can connect to your server with any Postgres client with those credentials:

    Host: [CI_CD_DOMAIN]
    Port: 5432
    Login: postgres
    Password: [APP_PASSWORD] (set in env var)

You can also connect with any PostgreSQL client, including the official CLI:
    
    PGPASSWORD=[APP_PASSWORD] psql --host=[CI_CD_DOMAIN] --port=5432 --username=postgres