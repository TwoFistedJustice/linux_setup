#PGAdmin 4 for Ubuntu 22.04

**[PGAdmin install docs](https://www.pgadmin.org/download/pgadmin-4-apt/):**
## Step 0 C-URL
Make sure you have curl installed, if not then install it:\
sudo apt install curl

## Step 1 Add the GPG key of PGAdmin
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg

## Step 2 Add the PGAdmin Repo:
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'



## Step 3 Depends on your usage:

### Install for both desktop and web modes:
sudo apt install pgadmin4

### Install for desktop mode only:
- It will get an icon in the start menu
- 
sudo apt install pgadmin4-desktop

### Install for web mode only: 
sudo apt install pgadmin4-web 

### Configure the webserver, if you installed pgadmin4-web:
sudo /usr/pgadmin4/bin/setup-web.sh


## Step 4
Access the PGAdmin web interface in the browser\
`http://127.0.0.1/pgadmin4`

## To remove PGAdmin
When it's time to get rid of it:
`sudo apt purge pgadmin4 -y`