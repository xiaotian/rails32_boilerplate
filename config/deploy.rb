# rvm integration, see: http://goo.gl/Vgn8t
$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"
require 'bundler/capistrano'

set :rvm_ruby_string, 'ruby-1.9.3-p0@rails32_boilerplate'

set :application, "rails32_boilerplate"

set :stages, %w(alpha prod)
set :default_stage, "alpha"
require 'capistrano/ext/multistage'

set :scm, :git
set :repository,  "xiaotian@code:/git/rails32_boilerplate.git"
set :branch, "master"

set :rails_env, 'production'

set :deploy_via, :copy
set :copy_strategy, :export
set :copy_exclude, %w(**/.git **/.autotest)
set :copy_compression, :gzip

set :bundle_without, [:darwin, :development, :test]

#
# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
