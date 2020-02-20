server 'apxangelskoe.ru', user: 'deploy', roles: %w[app db web resque_worker]

set :resque_environment_task, true

set :workers, { "#{fetch(:application)}*" => 1 }

set :branch, ENV['BRANCH'] if ENV['BRANCH']