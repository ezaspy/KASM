#!/bin/bash
while :; do
    case $1 in
        -d|--docker) remnux="docker";;
        -r|--remnux) remnux="remnux";;
        -c|--cuckoo) cuckoo="cuckoo";;
        -t|--thehiveproject) thehiveproject="thp";;
        -t|--misp) misp="misp";;
        -v|--velociraptor) velociraptor="velociraptor";;
        -g|--greenbone) greenbone="greenbone";;
        *) break
    esac
    shift
done
echo $docker $remnux $cuckoo $thehiveproject $misp $velociraptor $greenbone > .vars
clear
sleep 2
titles[0]="
      **   **     **      ******** ****     ****
     /**  **     ****    **////// /**/**   **/**
     /** **     **//**  /**       /**//** ** /**
     /****     **  //** /*********/** //***  /**
     /**/**   **********////////**/**  //*   /**
     /**//** /**//////**       /**/**   /    /**
     /** //**/**     /** ******** /**        /**
     //   // //      // ////////  //         // 
"
titles[1]="
   ><<   ><<        ><         ><< <<  ><<       ><<
   ><<  ><<        >< <<     ><<    ><<>< ><<   ><<<
   ><< ><<        ><  ><<     ><<      ><< ><< > ><<
   >< ><         ><<   ><<      ><<    ><<  ><<  ><<
   ><<  ><<     ><<<<<< ><<        ><< ><<   ><  ><<
   ><<   ><<   ><<       ><< ><<    ><<><<       ><<
   ><<     ><<><<         ><<  ><< <<  ><<       ><<
"
titles[2]="
    _|    _|     _|_|       _|_|_|   _|      _|  
     _|  _|     _|    _|   _|         _|_|  _|_|  
     _|_|       _|_|_|_|     _|_|     _|  _|  _|  
     _|  _|     _|    _|         _|   _|      _|  
     _|    _|   _|    _|   _|_|_|     _|      _|  
"
titles[3]="
        _        _______  _______  _______ 
       | \    /\(  ___  )(  ____ \(       )
       |  \  / /| (   ) || (    \/| () () |
       |  (_/ / | (___) || (_____ | || || |
       |   _ (  |  ___  |(_____  )| |(_)| |
       |  ( \ \ | (   ) |      ) || |   | |
       |  /  \ \| )   ( |/\____) || )   ( |
       |_/    \/|/     \|\_______)|/     \|
"
titles[4]="
        ___           ___           ___           ___     
       /|  |         /\\  \\         /\\__\\         /\\  \\    
      |:|  |        /::\\  \\       /:/ _/_       |::\\  \\   
      |:|  |       /:/\\:\\  \\     /:/ /\\  \\      |:|:\\  \\  
    __|:|  |      /:/ /::\\  \\   /:/ /::\\  \\   __|:|\\:\\  \\ 
   /\\ |:|__|____ /:/_/:/\\:\\__\\ /:/_/:/\\:\\__\\ /::::|_\\:\\__\\
   \\:\\/:::::/__/ \\:\\/:/  \\/__/ \\:\\/:/ /:/  / \\:\\~~\\  \\/__/
    \\::/~~/~      \\::/__/       \\::/ /:/  /   \\:\\  \\      
     \\:\\~~\\        \\:\\  \\        \\/_/:/  /     \\:\\  \\     
      \\:\\__\\        \\:\\__\\         /:/  /       \\:\\__\\    
       \\/__/         \\/__/         \/__/         \\/__/    
"
titles[5]="
        ___           ___           ___           ___     
       /  /\\         /  /\\         /  /\\         /  /\\    
      /  /:/        /  /::\\       /  /::\\       /  /::|   
     /  /:/        /  /:/\\:\\     /__/:/\\:\\     /  /:|:|   
    /  /::\\____   /  /::\\ \\:\\   _\\_ \\:\\ \\:\\   /  /:/|:|__ 
   /__/:/\\:::::\\ /__/:/\\:\\_\\:\\ /__/\\ \\:\\ \:\ /__/:/_|::::\
   \\__\\/~|:|~~~~ \\__\\/  \\:\\/:/ \\  \\:\\ \\:\\_\\/ \\__\\/  /~~/:/
      |  |:|          \\__\\::/   \\  \\:\\_\\:\\         /  /:/ 
      |  |:|          /  /:/     \\  \\:\\/:/        /  /:/  
      |__|:|         /__/:/       \\  \\::/        /__/:/   
       \\__\\|         \\__\\/         \\__\\/         \\__\\/
"
titles[6]="
      ___           ___           ___           ___     
     /__/|         /  /\\         /  /\\         /__/\\    
    |  |:|        /  /::\\       /  /:/_       |  |::\\   
    |  |:|       /  /:/\\:\\     /  /:/ /\\      |  |:|:\\  
  __|  |:|      /  /:/~/::\\   /  /:/ /::\\   __|__|:|\\:\\ 
 /__/\\_|:|____ /__/:/ /:/\\:\\ /__/:/ /:/\\:\\ /__/::::| \\:\\
 \\  \\:\\/:::::/ \\  \\:\\/:/__\\/ \\  \\:\\/:/~/:/ \\  \\:\\~~\\__\\/
  \\  \\::/~~~~   \\  \\::/       \\  \\::/ /:/   \\  \\:\\      
   \\  \\:\\        \\  \\:\\        \\__\\/ /:/     \\  \\:\\     
    \\  \\:\\        \\  \\:\\         /__/:/       \\  \\:\\    
     \\__\\/         \\__\\/         \\__\\/         \\__\\/
"
titles[7]="

    '||'  |'      |      .|'''.|  '||    ||' 
     || .'       |||     ||..  '   |||  |||  
     ||'|.      |  ||     ''|||.   |'|..'||  
     ||  ||    .''''|.  .     '||  | '|' ||  
    .||.  ||. .|.  .||. |'....|'  .|. | .||.

"
titles[8]="
          ____  ____  ____  ____ 
          ||K ||||A ||||S ||||M ||
          ||__||||__||||__||||__||
          |/__\\||/__\\||/__\\||/__\\|
"
titles[9]="
    =========================================
    =  ====  =====  ======      ===  =====  =
    =  ===  =====    ====  ====  ==   ===   =
    =  ==  =====  ==  ===  ====  ==  =   =  =
    =  =  =====  ====  ===  =======  == ==  =
    =     =====  ====  =====  =====  =====  =
    =  ==  ====        =======  ===  =====  =
    =  ===  ===  ====  ==  ====  ==  =====  =
    =  ====  ==  ====  ==  ====  ==  =====  =
    =  ====  ==  ====  ===      ===  =====  =
    =========================================
"
random=$[$RANDOM % ${#titles[@]}]
printf "\n\n  \033[1;33mWelcome to\n\033[0m\033[1;34m${titles[$random]}\033[0m\n                                 \033[1;33mconfiguration script\033[0m\n"
sleep 4
printf "\n  ###################################################\n  |   \033[1;33mPlease note the following:\033[0m                    |\n  |     -> \033[1;33mConfiguring KASM can take ~10 hours\033[0m      |\n  |     -> \033[1;33mEnsure BUILD.md is available to you\033[0m      |\n  |     -> \033[1;33mSelect the options if/when prompted\033[0m      |\n  ###################################################\n"
sleep 2
echo "
      Press ENTER to begin...
"
read input
clear
sudo chmod +x /opt/kasm/kasm/build/*.*
sudo chmod +x /opt/kasm/kasm/build/install/*.*
/opt/kasm/kasm/build/./build.sh