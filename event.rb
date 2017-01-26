# write a class for an event
# it should have variables to store event info
# event name
# start date
# end date
# methods for past, current and future event

class Event
  attr_accessor :start_date
  
  def initialize
  end

  def end_date
  end

  def end_date=(e_date)
  end
end

e = Event.new
e.end_date = "2020-10-10"
p e.to_s 
