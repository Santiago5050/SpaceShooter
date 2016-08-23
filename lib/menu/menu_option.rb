
class MenuOption

  def initialize(name, cord_y)
    @image = Gosu::Image.from_text(name, 60, font: Utils.default_font)

    @y = cord_y
    @x = Utils.center_x(@image)

  end

  def draw(selected)
    color = selected ? Utils::TEXT_COLOR : Utils::TEXT_COLOR_LIGHT
    @image.draw(@x, @y, 0, 1, 1, color)
  end

end
