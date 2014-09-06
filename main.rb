require 'spreadsheet'

data = Spreadsheet.open 'algo1_2_1_AStimes.xls'

sheet1 = data.worksheet 'Sheet1'

sheet1.each do |arrival_time, service_time|
  arrival_time = sheet1.column(1)
  service_time = sheet1.column(2)

  puts arrival_time
  puts service_time
end

