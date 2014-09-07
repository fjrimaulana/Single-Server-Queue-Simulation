class Data
  def initialize
    @data = data
    @sheet1 = sheet1
    @data_arrived_time = []
    @data_service_time = []
  end

  def spreadsheet
    @data = Spreadsheet.open 'algo1_2_1_AStimes.xls'
    @sheet1 = data.worksheet 'Sheet1'
  end

  def store_into_array
    @sheet1.each do |row|
      @data_arrived_time.push(row[0])
      @data_service_time.push(row[1])
    end
  end

  def remove_string_in_array
    @data_arrived_time.shift
    @data_service_time.shift
  end

  def display_data
    puts 'Arrived Time: ' + @data_arrived_time.to_s
    puts 'Service Time: ' + @data_service_time.to_s
  end
end