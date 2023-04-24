#PGAdmin 4 for Ubuntu 22.04

**[Instructions from It's Linux FOSS](https://itslinuxfoss.com/install-pgadmin-ubuntu-22-04/):**
## Step 0
Make sure you have curl installed, if not then install it:
`sudo apt install curl`

## Step 1
Add the GPG key of PGAdmin\
`sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add`

## Step 2
Add the PGAdmin Repo:\
`sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && sudo apt update'`

## Step 3
Install PGAdmin\
`sudo apt install pgadmin4 -y`

## Step 3a - No need for dev only
If using pg-admin web, then configure user account:\
`sudo /usr/pgadmin4/bin/setup-web.sh`
- Provide email, password, and say yes to everything.

## Step 4
Access the PGAdmin web interface in the browser\
`http://127.0.0.1/pgadmin4`

## To remove PGAdmin
When it's time to get rid of it:
`sudo apt purge pgadmin4 -y`