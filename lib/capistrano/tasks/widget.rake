namespace :victoire do
    namespace :widget do
        desc "generate widget view's css"
        task :generateCss do
            on roles(:app) do
                execute "cd #{release_path} && php " + fetch(:symfony_console_path) + " --env=prod victoire:widget-css:generate"
            end
        end
    end
end