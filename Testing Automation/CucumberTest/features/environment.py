import unittest
from selenium import webdriver
from selenium.webdriver.chrome.webdriver import WebDriver
from features.pages.trms_home import TRMSHomePage


def before_all(context):
    driver: WebDriver = webdriver.Chrome(
        "Users/naomiscott/Desktop/Revature/chromedriver")
    trms_home_page = TRMSHomePage(driver)

    test = unittest.TestCase()

    context.driver = driver
    context.trms_home = trms_home_page
    context.unittest = test
    print("started")


def after_all(context):
    context.driver.quit()
    print("ended")
