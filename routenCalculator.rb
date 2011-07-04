@alleRouten = "A-B:5 ,B-C:4 ,C-D:8 ,D-E:6 ,A-D:5 ,C-E:2 ,E-B:3 ,A-E:7".split(',')  #hier werden alle Routen zu einem Array gesplitted
@route = {} 

0.upto(@alleRouten.length - 1) do |i| #hier beginnt die Schleife 
  tmp = @alleRouten[i].split(':')   
  @route[tmp[0]] = tmp[1]          
end

def routeCalculation(meineRoute)         #In der routeCalculation Methode erhält einen String 
  summe = 0
  meineRoute = meineRoute.split('-')      #der String wird dann gesplittet
  0.upto(meineRoute.length - 2) do |i|

    tmp = @route[meineRoute[i] + '-' + meineRoute[i+1]].to_i    #Hier wird überprüft, ob es eine Strecke zwischen A-B gibt 
    
        if(tmp == 0)                                      
          return "Es gibt keine Route"                          #und wenn es sie nicht gibt, wird "Es gibt keine Route" ausgegeben; return> Ende der Methode
        end
    
     summe += tmp                  #hier wirds berechnet
  end
  return summe                     #Summe
end

puts routeCalculation("A-B-C")
puts routeCalculation("A-D")
puts routeCalculation("A-D-C")
puts routeCalculation("A-E-B-C-D")

# Überprüfen der Datei über z.B. GitBash mit ruby routenCalculator.rb    