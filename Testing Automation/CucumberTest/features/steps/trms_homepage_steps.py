import unittest

from behave import when, then

from features.pages.trms_home import TRMSHomePage

@when('The User types {email} in the email field')
def types_into_email_field(context, email):
    trms_home: TRMSHomePage = context.bank_home
    trms_home.email_field().send_keys(email)

@when('The User types {password} into the pass field')
def types_into_psw_field(context, password):
    trms_home: TRMSHomePage = context.trms_home
    trms_home.psw_field().send_keys(password)

@when('The User clicks the submit button')
def press_login_btn(context):
    trms_home: TRMSHomePage = context.trms_home
    trms_home.login_btn().click()

@then('The title should be {title}')
def verify_title_page(context, title):
    test: unittest.TestCase = context.unittest
    test.assertEquals(context.driver.title, title)
