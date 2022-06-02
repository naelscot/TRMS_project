from selenium.webdriver.chrome.webdriver import WebDriver
from selenium.webdriver.common.by import By


# Page Object Model - POM
class TRMSHomePage:

    def __init__(self, driver: WebDriver):
        self.driver = driver

    def login(self):
        return self.driver.find_element(by=By.ID, value="login")

    def email_field(self):
        return self.driver.find_element(by=By.ID, value="email")

    def psw_field(self):
        return self.driver.find_element(by=By.ID, value="passcode")

    def login_btn(self):
        return self.driver.find_element(by=By.ID, value="btn")