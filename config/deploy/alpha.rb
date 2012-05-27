set :ssh_options, {:username=>'rails32_boilerplate', :keys => File.join(ENV['HOME'],'.ssh', 'id_rsa_deploy')}

set :runner, 'rails32_boilerplate'

server "alpha.domain.com", :app, :web, :db, :primary => true

set :host, "alpha.domain.com" #required by capistrano mailer

# set :rails_env,   "alpha"
set :unicorn_env, "alpha"
# set :app_env,     "alpha"

