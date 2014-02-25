require 'gruff'

g = Gruff::Dot.new
g.title = 'Dot Graph With Manual Colors'
# g.labels = {
#   0 => '5/6', 
#   1 => '5/15', 
#   2 => '5/24', 
#   3 => '5/30', 
# }
g.data(:Art, [0, 5, 8, 15], '#990000')
g.data(:Philosophy, [10, 3, 2, 8], '#009900')
g.data(:Science, [2, 15, 8, 11], '#990099')

g.minimum_value = 0
    
# g.theme = {
#   :colors => ['black', '#12a702'],
#   :marker_color => 'black',
#   :font_color => 'black',      
#   :background_colors => 'white'
#   # :background_image => File.expand_path(File.dirname(__FILE__) + "/../assets/backgrounds/43things.png")
# }

g.write("../plots/points.png")