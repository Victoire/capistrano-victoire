# capistrano-victoire

Capistrano tasks used to deploy Victoire based projects.

## Workflow

The default capistrano workflow is used with the addition of theses tasks.

```ruby
after 'symfony:assets:install', 'victoire:assets:fetch'
after 'deploy:updated', 'victoire:viewReference:generate'
after 'deploy:updated', 'bazinga:js-translation:dump'
after 'deploy:updated', 'fos:js-routing:dump'
after 'deploy:updated', 'victoire:widget:generateCss'
```
