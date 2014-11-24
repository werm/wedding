# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/deployer/apps/wedding/current"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/deployer/apps/wedding/current/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/deployer/apps/wedding/current/unicorn.log"
stdout_path "/home/deployer/apps/wedding/current/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.wedding.sock"
listen "/tmp/unicorn.wedding.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
