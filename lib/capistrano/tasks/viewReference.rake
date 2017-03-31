namespace :victoire do
    namespace :viewReference do
        desc "generate view references"
        task :generate do
            on roles(:app) do
                execute "cd #{release_path} && php " + fetch(:symfony_console_path) + " --env=prod v:v:g"
            end
        end
    end
end