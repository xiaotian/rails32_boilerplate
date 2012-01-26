Rails 3.2 app boilerplate
=========================

dependencies
------------

* rvm
``` bash
# make sure iconv/readline is installed with rvm
$> rvm pkg install iconv
$> rvm pkg install readline
$> rvm install 1.9.3-p0 --with-iconv-dir=$rvm_path/user
```

gems included
-------------

1. guard
1. spork
1. rspec
1. capybara
1. factory_girl
1. annotate (integrated into rake db:migrate)


installation
------------

* clone project and re-init git
``` bash
$> git clone git@github.com:xiaotian/rails32_boilerplate.git
$> cd rails32_boilerplate
$> rm -rf .git
$> git init
```

* rename project
``` bash
$> find ./ -type f -exec sed -i '' 's/Rails32Boilerplate/SampleApp/g' {} \;
$> find ./ -type f -exec sed -i '' 's/rails32_boilerplate/sample_app/g' {} \;
```

* generate new secret token
    config/initializer/secret_token.rb (you can generate a dummy project and copy from it)

* remove FooBar scaffold
``` bash
$> rails destroy scaffold FooBar
```
