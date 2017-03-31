# Default Flow
after 'symfony:assets:install', 'victoire:assets:fetch'
after 'deploy:updated', 'victoire:viewReference:generate'
after 'deploy:updated', 'bazinga:js-translation:dump'
after 'deploy:updated', 'fos:js-routing:dump'
after 'deploy:updated', 'victoire:widget:generateCss'
