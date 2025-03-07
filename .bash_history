ls -l awsec2rds.pem
ssh -i "C:\Users\ADARSH R G\OneDrive\Documents\DATSCINCE INTERN\projects\blog aws,ec2,rds\key of ec2\awsec2rds.pem" ec2-user@3.27.144.77
icacls awsec2rds.pem /inheritance:r
icacls awsec2rds.pem /grant:r "%username%:R"
dir "C:\Users\ADARSH R G\OneDrive\Documents\DATSCINCE INTERN\projects\blog aws,ec2,rds\key of ec2"
move "C:\Users\ADARSH R G\OneDrive\Documents\DATSCINCE INTERN\projects\blog aws,ec2,rds\key of ec2\awsec2rds.pem" C:\AWSexit
exit
sudo yum update -y
sudo yum install python3 -y
pip3 install requests pymysql
;5~sudo yum install python3-pip -y
sudo yum install python3-pip -y
pip3 --version
sudo yum install python3 -y
pip3 install requests pymysql
nano fetch_quotes.py
python3 fetch_quotes.py
sudo yum update -y
sudo yum install python3 -y
pip3 install requests pymysql
import requests
import pymysql
# API Call
API_URL = "https://api.api-ninjas.com/v1/quotes?category=success"
API_KEY = "D7Y4YKs6kTgm17bDMFGilA==pgkX8nnCRfHrFtyx"
headers = {"X-Api-Key": API_KEY}
response = requests.get(API_URL, headers=headers)
data = response.json()
# Connect to RDS
conn = pymysql.connect(
    host='database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com',
    user='admin',
    password='Dsceai&ds',
    database='database-1',
    cursorclass=pymysql.cursors.DictCursor
)
cursor = conn.cursor()
# Insert Data
for quote in data:;     sql = "INSERT INTO quotes (quote, author) VALUES (%s, %s)"
    cursor.execute(sql, (quote['quote'], quote['author']))
conn.commit() cursor.close()
conn.close() python3 fetch_quotes.py
ls -l fetch_quotes.py
python3 fetch_quotes.py
nc -zv database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com 3306
mysql -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
sudo yum install mysql   # For Amazon Linux
sudo yum install mariadb
sudo amazon-linux-extras enable mariadb10.5
sudo dnf install https://dev.mysql.com/get/mysql80-community-release-el9-5.noarch.rpm
sudo dnf install mysql-community-client
mysql --version
mysql -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p
sudo dnf install mysql-community-client -y
mysql -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p
nano script.py
python3 script.py
nano script.py
python3 script.py
nano script.py
python3 script.py
nano script.py
python3 script.py
nano script.py
pip3 install python-dotenv requests pymysql
nano script.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
pip install requests
python fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
sudo yum update -y
sudo yum install -y ca-certificates
sudo update-ca-trust
python3 fetch_quotes.py
sudo rm -rf /etc/pki/ca-trust/extracted/pem
sudo update-ca-trust force-enable
sudo update-ca-trust extract
sudo reboot
nano fetch_quotes.py
python3 fetch_quotes.py
pip install --upgrade certifi
sudo yum install -y ca-certificates
sudo update-ca-trust force-enable
ls -l /etc/pki/tls/certs/ca-bundle.crt
pip install --upgrade certifi
sudo yum reinstall -y ca-certificates
sudo update-ca-trust extract
ls -l /etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem
sudo mkdir -p /etc/pki/ca-trust/extracted/pem
sudo curl -o /etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem https://curl.se/ca/cacert.pem
sudo ln -sf /etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem /etc/pki/tls/certs/ca-bundle.crt
ls -l /etc/pki/tls/certs/ca-bundle.crt
python3 -c "import ssl; print(ssl.get_default_verify_paths())"
pip install --upgrade certifi
ls -ld /etc/pki/ca-trust/extracted/pem/
ls -l /etc/pki/ca-trust/extracted/pem/
sudo update-ca-trust
ls -l /etc/pki/ca-trust/extracted/pem/
curl -v https://api.api-ninjas.com
curl -v "YOUR_NEW_API_ENDPOINT"
curl -v "https://api.quotable.io/random"
sudo yum update -y
sudo yum install ca-certificates -y
sudo update-ca-trust
curl -v "https://api.quotable.io/random"
curl -k "https://api.quotable.io/random"
sudo yum remove -y ca-certificates
sudo yum install -y ca-certificates
sudo update-ca-trust
ls -l /etc/pki/ca-trust/extracted/pem/
ls -l /etc/pki/tls/certs/ca-bundle.crt
curl -v "https://api.quotable.io/random"
date
sudo timedatectl set-timezone UTC
sudo ntpdate -u time.google.com
sudo yum install -y chrony
sudo systemctl enable --now chronyd
sudo chronyc tracking
sudo chronyc makestep
date
curl -v "https://api.quotable.io/random"
timedatectl
sudo timedatectl set-timezone Asia/Kolkata
timedatectl
sudo yum install -y chrony
sudo systemctl enable --now chronyd
sudo chronyc tracking
date
curl -v "https://api.quotable.io/random"
sudo yum update -y
sudo yum reinstall -y ca-certificates
sudo update-ca-trust force-enable
sudo update-ca-trust extract
curl --cacert /etc/pki/tls/certs/ca-bundle.crt -v "https://api.quotable.io/random"
curl -k "https://api.quotable.io/random"
openssl s_client -connect api.quotable.io:443 -servername api.quotable.io < /dev/null 2>/dev/null | openssl x509 -noout -dates
openssl verify -CAfile /etc/pki/tls/certs/ca-bundle.crt <(openssl s_client -connect api.quotable.io:443 -servername api.quotable.io < /dev/null 2>/dev/null | openssl x509)
sudo yum reinstall -y ca-certificates
sudo update-ca-trust enable
sudo update-ca-trust extract
exec bash
curl -v "https://api.quotable.io/random"
openssl s_client -connect api.quotable.io:443 -servername api.quotable.io < /dev/null 2>/dev/null | openssl x509 > quotable.pem
sudo cp quotable.pem /etc/pki/ca-trust/source/anchors/
sudo update-ca-trust extract
curl -v "https://api.quotable.io/random"
openssl s_client -connect api.quotable.io:443 -servername api.quotable.io | openssl x509 -noout -dates
curl "http://quotes.rest/qod.json?category=inspire"
curl -s "https://zenquotes.io/api/random"
nano script.py
python3 fetch_quotes.py
nano script.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
pip install mysql-connector-python
nano fetch_quotes.py
python3 fetch_quotes.py
mysql -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
nano fetch_quotes.py
python3 fetch_quotes.py
SELECT * FROM quotes LIMIT 10;
mysql -h quotes_db.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p
USE <quotes_db>;
aws rds describe-db-instances --region ap-southeast-2 --query "DBInstances[*].{DBInstance:DBInstanceIdentifier,Status:DBInstanceStatus,Endpoint:Endpoint.Address}"
aws configure
aws s3 ls
aws configure
rm -rf ~/.aws/credentials
rm -rf ~/.aws/config
aws configure
aws sts get-caller-identity
aws rds describe-db-instances --region ap-southeast-2 --query "DBInstances[*].{DBInstance:DBInstanceIdentifier,Status:DBInstanceStatus,Endpoint:Endpoint.Address}"
mysql -h <your-rds-endpoint> -u admin -p
mysql -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p
exit
sudo yum install git -y
git --version
ls
mysqldump -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p quotes_db > quotes_db_backup.sql
yes
mysqldump -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p quotes_db > quotes_db_backup.sql
mysqldump -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p quotes_db --single-transaction --set-gtid-purged=OFF > quotes_db_backup.sql
mysqldump -h database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com -u admin -p --all-databases --triggers --routines --events --single-transaction --set-gtid-purged=OFF > full_backup.sql
mv quotes_db_backup.sql ~/aws-rds-web-scraping/
ls /home/ec2-user/
find /home/ec2-user/ -name "*.py"
cd /home/ec2-user/
git init
echo "quotes_db_backup.sql" >> .gitignore
echo "full_backup.sql" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "*.log" >> .gitignore
echo "*.pem" >> .gitignore  # Avoid exposing private keys!
cat .gitignore
git add .
git commit -m "Initial commit: Web scraping project with AWS RDS"
git remote add origin https://github.com/AdarshRG09/aws-rds-web-scraping
git branch -M main
git push -u origin main
cat .aws/credentials
rm -rf ~/.aws/credentials
echo ".aws/" >> .gitignore
git add .gitignore
git commit -m "Added .aws to .gitignore"
git filter-branch --force --index-filter   "git rm --cached --ignore-unmatch .aws/credentials"   --prune-empty --tag-name-filter cat -- --all
git push origin --force --all
echo "AWS_ACCESS_KEY_ID=your_new_key" >> .env
echo "AWS_SECRET_ACCESS_KEY=your_new_secret" >> .env
exit
