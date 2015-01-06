worker_processes Integer(ENV['WEB_CONCURRENCY'] || 3)
timeout 15
preload_app true

before_fork do |_, _|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  puts 'UserProfileRepository disconnecting'
  UserProfileRepository.connection.disconnect
  puts 'UserProfileRepository disconnected'
end

after_fork do |_, _|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  puts 'UserProfileRepository connecting'
  UserProfileRepository.connection = Sequel.connect(ENV['DATABASE_URL'])
  puts 'UserProfileRepository connected'
end
