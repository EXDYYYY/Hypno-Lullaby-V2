function onCreate()
  makeLuaSprite('bg','background',9999,999)
  setScrollFactor('bg',0.9,0.9)
  makeLuaSprite('mg','midground',-999,-999)
  scaleObject('mg',0.7,0.7)
  makeLuaSprite('fg','foreground',-999,-999)
  scaleObject('fg',0.7,0.7)
  makeLuaSprite('fog','fog',-999,-999)
  scaleObject('fog',0.7,0.7)
  addLuaSprite('bg',false)
  addLuaSprite('mg',false)
  addLuaSprite('fog',false)
  addLuaSprite('fg',true)
  close(true);
  end
  



