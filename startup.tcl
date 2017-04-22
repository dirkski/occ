puts "Load all plugins..."
pload ALL
cd "D:\\Cad-Dateien\\PMI"
puts "Current Dir..."
pwd
puts "Init a View..."
vinit name="OCCT_6.9" l=960 t=30 w=960 h=1000
vsetgradientbg 130 130 130 180 180 250 2

set mistake 0
while { $mistake != 1 } {
  DatakitRead  doc5 "D:\\Cad-Dateien\\PMI\\HEXAGON_BLOC_MEDIUM_04-12-2016_BALLOON.CATPart" 
  XShow doc5
  vsetdispmode 1
  vfit  
  vclose
  Close doc5
}

