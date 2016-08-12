module RejoindersHelper
  
  def tally(rsvps)
    fri_count = 0
    sat_count = 0
    sun_count = 0
    rsvps.each do |party|
      if party.yes
        if party.friday
          fri_count += party.number
        end
        if party.saturday
          sat_count += party.number
        end
        if party.sunday
          sun_count += party.number
        end
      end
    end
    return fri_count, sat_count, sun_count
  end
  
  def total_attending(rsvps)
    count = 0
    rsvps.each do |party|
      count += party.number if party.yes
    end
    return count
  end
  
end
