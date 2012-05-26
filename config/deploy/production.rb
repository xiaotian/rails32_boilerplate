set :ssh_options, {:username=>'rails32_boilerplate', :keys => File.join(ENV['HOME'],'.ssh', 'domain.com-deploy-keypair')}

set :runner, 'rails32_boilerplate'

server "domain.com", :app, :web, :db, :primary => true

set :host, "domain.com" #required by capistrano mailer

set :rails_env,   "production"
set :unicorn_env, "production"
set :app_env,     "production"

