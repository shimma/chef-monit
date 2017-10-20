Chef-monit
========================================

Please add node attributes like below. 

```
"monit_config": {
    "unicorn_rails": {
      "pid_file": "/srv/www/rails_app/shared/pids/unicorn.pid",
      "start_program": "/bin/sh -l -c '/srv/www/rails_app/shared/scripts/unicorn start'",
      "stop_program": "/bin/sh -l -c '/srv/www/rails_app/shared/scripts/unicorn stop'",
      "group": "unicorn"
    },
    "unicorn_rails": {
      "pid_file": "/srv/www/rails_app/shared/pids/unicorn.pid",
      "start_program": "/bin/sh -l -c '/srv/www/rails_app/shared/scripts/unicorn start'",
      "stop_program": "/bin/sh -l -c '/srv/www/rails_app/shared/scripts/unicorn stop'",
      "group": "unicorn"
    }
}
```
