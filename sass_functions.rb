require 'sass'

module Sass::Script::Functions
  def center_offset(container_height, font_size)
    diff = container_height.minus font_size
    div  = diff.div Sass::Script::Number.new(2)
    div.minus Sass::Script::Number.new(2)
  end
  declare :center_offset, [:number, :number]
end
