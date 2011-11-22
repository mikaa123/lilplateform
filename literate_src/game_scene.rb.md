## Game scene
In this file, we describe the main scene of `lilplateform`. `Ray`
library provides a base class for describing scenes,
`Ray::Scene`. There are several hooks that will get called, like
`setup`, in the begining, then `register` to bind events, and of
course `render`. In the end, we can clean up images in the `clean_up`
method.

This scene is used in [[lilplateform.rb]].

~~~~ ruby
class GameScene < Ray::Scene
  scene_name :game_scene
~~~~

### Scene's setup
Let's create an array to hold the tiles of the map. We also need to
create an object representing the player.

~~~~ ruby
  def setup
    @map = [[0, 1, 1, 1, 0],
            [1, 0, 1, 1, 1],
            [1, 0, 0, 0, 1],
            [0, 1, 1, 0, 0]]
  end
~~~~

### Scene's event bindings
~~~~ ruby
  def register
  end
~~~~

### Scene's rendering
~~~~ ruby
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
~~~~

### Scene's cleaning up
~~~~ ruby
  def clean_up
  end
end
~~~~
