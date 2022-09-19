class Sleeper
    @queue = :sleep
    def self.perform(seconds)
        puts "Sleeep..>>>#{time.now}"
    end
end