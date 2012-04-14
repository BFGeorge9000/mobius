require "mobius/version"
require 'net/http'
require 'uri'
module Mobius

  SITE = # this constant will need to hold the first URL you visited as part of this game

  def self.new
    Mobilito.new
  end
  
  def self.send
    m = Mobilito.new
    res = m.transmit
    m.interpret(res)
  end

  class Mobilito

    # SOME ASSEMBLY REQUIRED (no, not the language)

    def transmit
      uri = URI(SITE)
      res = Net::HTTP.post_form(uri, calling_card.merge(:authkey => AUTHKEY))
    end
    
    def interpret(res)
      puts "Response: #{res.body}"
    end

    def inspect
      puts "\n\n
                                       ````  `````                              
                                  ``.```   ` ````.-..`                          
                               `.--.```````  `. `.-://:.`                       
                              .-:-..````...``.```..-:://:.                      
                             :/:.:--.-...````      ``.-:/+.                     
                             /::-.----``            ``.-/+:                     
                            -//::-:--`              ```-//.                     
                            :/::-..```             ``..:/`                      
                            -/:::.````   `..----..``.-://.                      
                            `/:-:-.```  `..----::-``::://`                      
                             ---::.``     `````...` -::/-                       
                              .---..`````   ```  `` `:-:-                       
                               .-`..```...``    ``` `:-:.                       
                                --:-````..`` ````..`.::-                        
                                `.:..`````````````.:/::`                        
                                 `/:...```````---.--//.                         
                                 `-::-..````````.-::/-                          
                                 `---:::-.....`..--::                           
                                 .-..--////::::///:-``                          
                                 ..``..-:--//-:::-`    `                        
                                 .`````-:-...-::-:.```` ` `  `````              
                                ```````.-.``.:://::.````````````                
                            `..`````  ````.--.:/:://:-....```````               
                       ``...`-````     `` `.`-::---....`-:--.....`````          
                   ```.----`-`         ``  `...````````.-.--..---.``            
                ``...`..`-..-           `````         ..``...-`  ```.`          
              `.--.```.``-`-.    ```                ``.``.``.  `` ``....        
             `:/:-.```.`.. -``     ``..`..````  ```-`. ````. .` `.`...--.       
            `:+/:-.```.``` -````````````---.```` `..`. ```..``. ``.:/-::.       
             -:::-.`...````-``..`   `````.`-.   `..-.``..`-`` `.`.--/:::`       
              `:-:-..`....--.`...````.. `..-````..``..`.::.`.``.--::+/-         
               `-::.-.-`.-:..```.```.-``.....`  .`  `..-:- `.``.-///-`          
                 `---:-``--``      ``.`.--`.`        `-.-- `.-.-//-`            
                    `.:.`-.```     `.`-`..`-`       ````-:--///:.`              
                       ``.....`````....  ....``     `.:/+/:.`                   
                            `......--.````..---```.-::--.`                      
                                 `````....-------..``
      \n\n\n
         Greetings, esteemed technologist.  If you're reading this, it appears 
        you're at least somewhat familiar with the joys of Ruby.  Now let's see
      what you can do.  Take a look around the components of this gem.  Determine
       what it does, what it's supposed to do, build the difference, and USE IT.\n\n
      We look forward to hearing from you...\n\n"
    end
  end
end
