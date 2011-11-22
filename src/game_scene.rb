#  In this file, we describe the main scene of `lilplateform`. `Ray`
#  library provides a base class for describing scenes,
#  `Ray::Scene`. There are several hooks that will get called, like
#  `setup`, in the begining, then `register` to bind events, and of
#  course `render`. In the end, we can clean up images in the `clean_up`
#  method.
#  This scene is used in [[lilplateform.rb]].
class GameScene < Ray::Scene
  scene_name :game_scene

#  Let's create an array to hold the tiles of the map. We also need to
#  create an object representing the player.
  def setup
    @map = [[0, 1, 1, 1, 0],
            [1, 0, 1, 1, 1],
            [1, 0, 0, 0, 1],
            [0, 1, 1, 0, 0]]
  end

  def register
  end

  def render(win)
    @map.each_with_index do |lines, i|
      lines.each_with_index do |col, j|
        case( col )
        when 1
        win.draw Ray::Polygon.rectangle([j*40, i*40, (j*40)+40, (i*40)+40],
                 Ray::Color.red)
        end
      end
    end
  end

  def clean_up
  end
end

