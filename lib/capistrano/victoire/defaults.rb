# Default Flow

set :fetch_victoire_assets, true

after 'symfony:assets:install', 'victoire:assets:fetch'
after 'symfony:assets:install', 'bazinga:js_translation:dump'
after 'symfony:assets:install', 'fos:js_routing:dump'
after 'deploy:updated', 'victoire:viewReference:generate'
after 'deploy:updated', 'victoire:widget:generateCss'
