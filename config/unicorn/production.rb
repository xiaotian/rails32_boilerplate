root = File.expand_path('../../../', __FILE__)
working_directory root
pid         File.join(root, 'tmp/pids/unicorn.pid')
stderr_path File.join(root, 'log/production.log')
stdout_path File.join(root, 'log/production.log')

# listen 3000
listen "/tmp/unicorn.rails32_boilerplate.sock"
worker_processes 2
timeout 30

