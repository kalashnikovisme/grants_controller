[![Build Status](https://travis-ci.org/kalashnikovisme/grants_controller?branch=develop)](https://travis-ci.org/kalashnikovisme/grants_controller)
[![Coverage Status](https://coveralls.io/repos/kalashnikovisme/grants_controller/badge.png)](https://coveralls.io/r/kalashnikovisme/grants_controller)
```shell
git clone git@github.com:kalashnikovisme/grants_controller
cd grants_controller
git flow init
bundle
rake db:migrate
rails generate figaro:install
rake secret
```
copy secret_token to config/application.yml
