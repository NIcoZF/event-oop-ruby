class Event
  attr_accessor :start_date

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees.join(", ")
  end

  def postpone_24h
    @start_date += (60 * 60 *24)
  end
  
  def end_date
    return @start_date + (@duration * 60)
  end

  def is_past?
    return @start_date < Time.now
  end
  def is_future?
    return @start_date > Time.now
    # !self.is_past?
  end

  def is_soon?
    return @start_date < (Time.now + 30*60)
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée : #{@duration}"
    puts "> Invités : #{@attendees}"
  end
  
end