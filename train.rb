class Train
 def initialize(window)
  @window=window
  @icon=Gosu::Image.new(@window,"train.png",true)
  @x=0
  @y=window.height-320
  @a=0
 end
 def draw
  @icon.draw @x, @y, 1
  @icon.draw @x-@icon.width, @y, 1
 end
 def move
  @a=@a+0.01
  if @a>20
   @a=20
  print "v.max"
  end
  @x=@x-@a
  if @x<0
   @x=@icon.width
  end
 end
end
