# Calculate the moment when someone has lived for 109 seconds.

# A gigasecond is 109 (1,000,000,000) seconds.

def gig years, months
  seconds_a_day = 60 * 60 * 24
  seconds_in_months = months * (seconds_a_day * 30)
  seconds_in_years = years * (seconds_a_day * 365)
  seconds_in_years + seconds_in_months

end

p gig(38, 9)