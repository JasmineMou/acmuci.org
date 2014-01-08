acmuci.org
==========

Local Installation
------------------

Download and install RVM

```
curl -sSL https://get.rvm.io | bash -s stable --rails
```

Change to your desired project directory

```
cd /path/to/project/
```

Clone the repository

```
git clone https://github.com/ACM-UCI/acmuci.org.git
```

By this point, uou should now have a clone of the code repository.

Install all dependencies

```
bundle install
```

Start the server


```
rvm use
rails server
```

The website should now be available at `http://localhost:3000`

Rails Environment
-----------------

- Ruby Version: 2.x
- Rails version: 4.x
