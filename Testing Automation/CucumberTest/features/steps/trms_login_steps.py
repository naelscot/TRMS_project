import unittest

from behave import given, when, then
from selenium.webdriver.chrome.webdriver import WebDriver

from features.pages.trms_home import TRMSHomePage


@given('The User is on the home page')
def get_to_trms_home(context):
    driver: WebDriver = context.driver
    driver.get('/Users/naomiscott/Desktop/Revature/Project1/FrontEnd/index.html')

@when('The User type their email in the field')
def enters_their_field(context):
    trms_home: TRMSHomePage = context.bank_home
    trms_home.email_field().send_keys('sjones998@yahoo.com')

@when('The User their password into the field')
def types_into_psw_field(context):
    trms_home: TRMSHomePage = context.trms_home
    trms_home.psw_field().send_keys('pass1234')

@when('The User clicks the submit button')
def press_login_btn(context):
    trms_home: TRMSHomePage = context.trms_home
    trms_home.login_btn().click()

@then('The User should be on the Application Page')
def verify_successful_login(context):
    driver: WebDriver = context.driver
    context.unittest.assertEquals(driver.title, "TRMS - Application")