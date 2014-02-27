require 'gruff'
require 'csv'

ndx = []
tv_data = []
radio_data = []
newspaper_data = []
sales_data = []

CSV.foreach('../data/Advertising.csv', :headers => true) do |row|
	ndx << row['']
	tv_data << row['TV'].to_i
	radio_data << row['Radio'].to_i
	newspaper_data << row['Newspaper'].to_i
	sales_data << row['Sales'].to_i
end

g = Gruff::Scatter.new(800)

@datasets = [
	[:TV, tv_data, sales_data],
	[:Radio, radio_data, sales_data],
	[:Newspaper, newspaper_data, sales_data]
]

@datasets.each do |data|
	g.data(data[0], data[1], data[2])
end

g.theme = {
  :colors => ['blue', 'red', 'green'],
  :marker_color => 'black',
  :font_color => 'black',      
  :background_colors => 'white'
}

g.x_axis_label = "Units (in thousands)"
g.y_axis_label = "Thousands of Dollars"

g.right_margin = 30

g.maximum_value = 30
g.minimum_value = 0

g.title = 'Advertising Scatter Plot'
g.write('../plots/scatter_advertising.png')