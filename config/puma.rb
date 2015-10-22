root = "#{Dir.getwd}"

bind "unix:///tmp/smallbutterfly.sock"
bind 'tcp://0.0.0.0:3061'

daemonize true
stdout_redirect "#{root}/log/access.log", "#{root}/log/errors.log", true

environment ENV['RAILS_ENV'] || 'production'
pidfile "#{root}/tmp/pids/puma.pid"
state_path "#{root}/tmp/puma.state"
rackup "#{root}/config.ru"

threads 4, 16
workers 4

# preload_app! # Не работает стабильно!
prune_bundler # перезаскаем bundler, чтобы подхватились новые версии гемов