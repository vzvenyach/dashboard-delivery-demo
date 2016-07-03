from time import sleep
from selenium import webdriver
import sys

browser = webdriver.Firefox()
browser.get('http://localhost:8000')
sleep(2)
browser.save_screenshot('/Users/vladlenzvenyach/Coding/dashboard-delivery-demo/screenshots/' + sys.argv[1] + '.png')
browser.quit()
