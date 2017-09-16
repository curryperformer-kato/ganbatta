server '13.114.177.208', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/ubuntu/.ssh/aws_rsa'