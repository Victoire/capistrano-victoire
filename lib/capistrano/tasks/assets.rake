namespace :victoire do
    namespace :assets do
        desc <<-DESC
            Fetch Assets
        DESC
        task :fetch do
            on roles(:app) do
                if fetch(:rollbar_token)
                    execute "cd #{release_path} && php " + fetch(:symfony_console_path) + " --env=prod victoire:ui:fetchAssets --force"
                end
            end
        end
    end
end

namespace :bazinga do
    namespace :js_translation do
        desc <<-DESC
            Dumps all JS translation files to the filesystem
        DESC
        task :dump do
            on roles(:app) do
                execute "cd #{release_path} && php " + fetch(:symfony_console_path) + " --env=prod bazinga:js:dump"
            end
        end
    end
end

namespace :fos do
    namespace :js_routing do
        desc <<-DESC
            Dumps exposed routes to the filesystem
        DESC
        task :dump do
            on roles(:app) do
                execute "cd #{release_path} && php " + fetch(:symfony_console_path) + " --env=prod fos:js-routing:dump --target=web/js/fos_js_routes_prod.js"
            end
        end
    end
end
