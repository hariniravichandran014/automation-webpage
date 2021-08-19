import schedule
import time
import os
from subprocess import call


def sendmail():
    call(['C:/Users/Harini/AppData/Local/Programs/Python/Python39/python.exe', '-m', 'robot',
          'C:/Users/Harini/Automate/olympics/account.robot'])

#schedule.every(6).hours.do(sendmail)
#schedule.every(3).minutes.do(sendmail)
schedule.every(5).minutes.do(sendmail)



while 1:
    schedule.run_pending()
    time.sleep(10)
