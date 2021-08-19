* Settings *
Library     SeleniumLibrary





* Variables *


* Keywords *
open olympic
    Open Browser    https://olympics.com/tokyo-2020/en/    chrome

goto all medallist
    Go To    https://olympics.com/tokyo-2020/olympic-games/en/results/all-sports/medalists.htm


* Test Cases *

medalists
    open olympic
    Maximize Browser Window
    goto all medallist
    Sleep    10s 
    Click Element     //*[@id="disciplineSelectorId"]    RETURN 

    Press Keys     //*[@id="medallist-discipline"]/li[7]/a   RETURN
    ${items}=    Get WebElements   //*[@id="mainContainer"]/div/div[1]/div[1]/div[2]
        FOR    ${item}    IN    @{items}
            ${word}=    Get Text    ${item}
            Log    ${word}
        END
        
    Close Browser
