load File.expand_path("../tasks/assets.rake", __FILE__)
load File.expand_path("../tasks/viewReference.rake", __FILE__)
load File.expand_path("../tasks/widget.rake", __FILE__)

namespace :load do
  task :defaults do
    load "capistrano/victoire/defaults.rb"
  end
end
