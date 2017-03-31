# capistrano-victoire

Capistrano tasks used to deploy Victoire based projects.

## Install

```ruby
#add this line in your Gemfile
gem 'capistrano-victoire'
```

```ruby
#add this line in your Capfile
require 'capistrano/victoire'
```
Then run 
```shell
bundle install 
#or bundle update
```

## Workflow

The default capistrano workflow is used with the addition of theses tasks.

```ruby
after 'symfony:assets:install', 'victoire:assets:fetch'
after 'deploy:updated', 'victoire:viewReference:generate'
after 'deploy:updated', 'bazinga:js_translation:dump'
after 'deploy:updated', 'fos:js_routing:dump'
after 'deploy:updated', 'victoire:widget:generateCss'
```
