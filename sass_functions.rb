require 'sass'

module Sass::Script::Functions
  def center_offset(container_height, font_size)
    height = container_height.value
    size   = font_size.value
    #Sass::Script::Number.new (height - size) / 2 - 2
    diff = container_height.minus font_size
    div  = diff.div Sass::Script::Number.new(2)
    div.minus Sass::Script::Number.new(2)
  end
  declare :my_blue, [:number, :number]
end
