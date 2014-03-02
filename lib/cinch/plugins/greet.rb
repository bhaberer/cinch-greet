require 'cinch/storage'

module Cinch::Plugins
  class Greet
    include Cinch::Plugin

    listen_to :join
    match /greet (\w+) with (.+)/, react_on: :private

    def initialize(*args)
      @storage = Cinch::Storage.new(config[:filename] || 'yaml/greets.yml')
      @storage.data ||= {}
    end

    def execute(m, user, message)
      @storage.data[user] = message
      @storage.save
    end

    def listen(m)
      if @storage.data.key?(m.user.nick)
        m.reply @storage.data[m.user.nick]
      end
    end
  end
end
