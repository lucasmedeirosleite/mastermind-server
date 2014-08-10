Mongoid.load!("#{File.dirname(__FILE__)}/../mongoid.yml", :mastermind_config)
Mongoid.logger = Logger.new($stdout)
Moped.logger = Logger.new($stdout)

module BSON
  class ObjectId
    def as_json(*args)
      to_s
    end

    alias :to_json :as_json
  end
end

module Mongoid
  module Document
    def as_json(options={})
      attrs = super(options)
      attrs["id"] = attrs["_id"].to_s
      attrs
    end
  end
end