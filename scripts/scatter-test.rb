require 'gruff'

@datasets = [
    [:Chuck, [20, 10, 5, 12, 11, 6, 10, 7], [5, 10, 19, 6, 9, 1, 14, 8]],
    [:Brown, [5, 10, 20, 6, 9, 12, 14, 8], [20, 10, 5, 12, 11, 6, 10, 7]],
    [:Lucy, [19, 9, 6, 11, 12, 7, 15, 8], [6, 11, 18, 8, 12, 8, 10, 6]]
]

g = Gruff::Scatter.new(800)

@datasets.each do |data|
	g.data(data[0], data[1], data[2])
end
g.theme = {
  :colors => ['blue', 'red', 'green'],
  :marker_color => 'black',
  :font_color => 'black',      
  :background_colors => 'white'

}

g.minimum_value = 0
g.title = 'Basic Scatter Plot Test'
g.write('../plots/scatter_basic.png')