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
