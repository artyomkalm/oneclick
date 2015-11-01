rails_env = 'production'

bind "unix:///srv/www/smallbutterfly/current/tmp/smallbutterfly.sock"
pidfile "/srv/www/smallbutterfly/current/tmp/puma.pid"

daemonize true
stdout_redirect "/srv/www/smallbutterfly/current/log/access.log", "/srv/www/smallbutterfly/current/log/errors.log", true

threads 4, 4
workers 2

activate_control_app