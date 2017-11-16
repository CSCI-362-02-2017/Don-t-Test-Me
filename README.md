# Don't Test Me

### About Us
Developers:
* Kyle Glick (B.S. Computer Science, College of Charleston)
* Sam Word (B.S. Computer Science, College of Charleston)
* Kenneth Dela Cruz (B.S. Computer Science, College of Charleston)

Instructor:
* [Dr. Jim Bowring](http://compsci.cofc.edu/about/faculty-staff-listing/bowring-jim.php) (Ph.D. Computer Science, Georgia Institute of Technology)

# Installation Guide

### Install Git
```
sudo apt-get install git
```

### Clone our Repo
```
git clone https://github.com/CSCI-362-02-2017/Don-t-Test-Me.git
cd Don-t-Test-Me/canvas/
```

### Install Ruby Libraries
```
sudo add-apt-repository ppa:brightbox/ruby-ng
```
Press `<return>` when prompted
```
sudo apt-get update
sudo apt-get install ruby2.4 ruby2.4-dev zlib1g-dev libxml2-dev libsqlite3-dev libpq-dev libxmlsec1-dev curl make g++
```
Press `<y>` when prompted

### Install PostgreSQL
```
sudo apt-get install postgresql
```
Press `<y>` when prompted
```
sudo -u postgres createuser $USER
sudo -u postgres psql -c "ALTER USER $USER WITH SUPERUSER" postgres
```

### Install Bundler and Ruby Gems
```
mkdir ~/.gems
export GEM_HOME=~/.gems
gem install bundler -v 1.15.3
$GEM_HOME/bin/bundle install
```

### Set Up Database and Data
```
cp config/database.yml.example config/database.yml
createdb canvas_development
$GEM_HOME/bin/bundle exec rake db:initial_setup
```
Provide an `email` when prompted for an admin email

Verify the `email`

Provide a `password` when prompted for an admin password

Verify the `password`

Enter a `name` when prompted for an organization name (We used `Don't Test Me`)

Press `<3>` when prompted if you want to log data for Canvas

### Run the Script
```
cd TestAutomation
./scripts/runAllTests.sh
```
