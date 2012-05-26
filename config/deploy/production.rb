set :ssh_options, {:username=>'deploy', :keys => File.join(ENV['HOME'],'.ssh', 'id_rsa_deploy')}

set :runner, 'rails32_boilerplate'

server "domain.com", :app, :web, :db, :primary => true

set :host, "domain.com" #required by capistrano mailer

set :rails_env,   "production"
set :unicorn_env, "production"
set :app_env,     "production"

