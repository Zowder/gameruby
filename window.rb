class Window<Gosu::Window
 def initialize
  super(900,505,false)
  @fundo=Gosu::Image.new(self,"fundo.png",true)
  @trem=Train.new(self)
  @run_game=true
 end
 def draw
  @fundo.draw 0,0,0
  @trem.draw
  end
 def update
  if @run_game==true
   @trem.move
  end
 end   
end
