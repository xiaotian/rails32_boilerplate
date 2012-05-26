set :ssh_options, {:username=>'rails32_boilerplate', :keys => File.join(ENV['HOME'],'.ssh', 'web01-deploy-keypair')}

set :runner, 'rails32_boilerplate'

server "web01", :app, :web, :db, :primary => true

set :host, "web01" #required by capistrano mailer

set :rails_env,   "alpha"
set :unicorn_env, "alpha"
set :app_env,     "alpha"

