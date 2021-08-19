* Settings *
Library  SeleniumLibrary
* Variables *
${message}  In this gmail,the mail is sent and stored in text using automation

* Test Cases *
Signin
    open browser     https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin  chrome
    Maximize Browser Window
    input text      id:identifierId        rharini968@gmail.com
    click element   class:VfPpkd-vQzf8d
    Sleep           10s
    input text      name:password        Mickymouse@14
    click element   class:VfPpkd-vQzf8d
    sleep           10s

Inbox
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           10s
    input text      xpath:(//textarea[@class='vO'])[1]        hariniravichandran209@gmail.com
    Sleep           10s
    input text      name:subjectbox                     Automation Framework : Robotic framework using gmail
    sleep           10s
    input text      xpath://div[@class="Am Al editable LW-avf tS-tW"]      ${message}
    sleep           10s
    Choose File     xpath = //input[@name='Filedata']    C:/Users/Harini/Automate/olympics/acc.png
    sleep           10s
    click element   xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    sleep           10s

Testing
    click element   xpath://a[@href="https://mail.google.com/mail/u/0/#sent"]
    sleep           10s
    click element   xpath://*[@id=":3"]
    sleep           10s
     #Page Should Contain     ${message}
    sleep           10s
Final
        ${output}        get text        xpath://div[@dir='ltr'][contains(text(),'In this gmail,the mail is sent and stored in text ')]
    Log To Console  ${output}

* Keywords *

Close Browser
