require 'spreadsheet'

data = Spreadsheet.open 'algo1_2_1_AStimes.xls'
sheet1 = data.worksheet 'Sheet1'

data_arrived_time = []
data_service_time = []

sheet1.each do |row|
  data_arrived_time.push(row[0])
  data_service_time.push(row[1])
end

data_arrived_time.shift
data_service_time.shift

puts data_arrived_time.to_s
puts ''
puts data_service_time.to_s
puts ''

def add (data_arrived_time, data_service_time)
  data_arrived_time + data_service_time
end

puts data_arrived_time.zip(data_service_time).map { |i,j| add(i,j)}

# jobs_to_do = data_arrived_time.count
# puts jobs_to_do
# i = 0
#
# arrival_time=0
# delay_time=0
#
# service_begins = arrival_time + delay_time
# service_time=0
# wait_in_node = delay_time + service_time
# departure_time = arrival_time + wait_in_node
#
# while i <= jobs_to_do
#   i += 1
#
# end