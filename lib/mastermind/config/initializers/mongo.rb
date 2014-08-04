Mongoid.load!("#{File.dirname(__FILE__)}/../mongoid.yml", :mastermind_config)
Mongoid.logger = Logger.new($stdout)
Moped.logger = Logger.new($stdout)