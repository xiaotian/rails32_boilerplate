#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails32Boilerplate::Application.load_tasks

# run annotate as part of rake db:migrate
ENV['position_in_class']   = "before"
ENV['position_in_fixture'] = "before"
ENV['show_indexes']        = "true"
ENV['include_version']     = "true"
ENV['exclude_tests']       = "false"
ENV['exclude_fixtures']    = "false"
ENV['skip_on_db_migrate']  = "false"
Dir["#{Gem.searcher.find('annotate').full_gem_path}/**/tasks/**/*.rake"].each {|ext| load ext}

