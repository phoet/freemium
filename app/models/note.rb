class Note
  
  KEY = 'freemium_note'
  
  @queue = :note

  def self.perform(time_part)
    puts "hi #{time_part}, doing some calculations"
    sleep(time_part)
    puts "bye #{time_part}, finished"
    Resque.redis.set KEY, "a note from freemium #{Time.now} slept #{time_part}"
  end
end