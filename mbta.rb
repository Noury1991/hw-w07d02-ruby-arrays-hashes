
# # your solution here 

def stops_between_stations(sLine, sStation, eLine, eStation)
    lines = {
        red:[ "South Station","Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
         green:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
          Orange:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hill"]
        }
    
    return p (lines[sLine.to_sym].index(sStation) - lines[eLine.to_sym].index(eStation).abs()) if sLine==eLine
    
    p ((lines[(sLine.downcase).to_sym].index(sStation) - lines[(sLine.downcase).to_sym].index("Park Street")).abs() ) + ((lines[(eLine.downcase).to_sym].index("Park Street") - lines[(eLine.downcase).to_sym].index(eStation)).abs() )
end
   
    
    stops_between_stations('red', 'Alewife', 'red', 'Alewife') # 0
    stops_between_stations('red', 'Alewife', 'red', 'South Station') # 7
    stops_between_stations('red', 'South Station', 'green', 'Kenmore') # 6 
    