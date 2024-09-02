from Browser.browser import Browser
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from robot.libraries.BuiltIn import BuiltIn


def setup_chrome_driver():
    # Set up Chrome
    options = Options()
    options.add_argument("--start-maximized")  # Example option to start browser maximized
    options.add_argument("--headless")  # Run Chrome in headless mode
    options.add_argument("--disable-gpu")  # Optional: Disable GPU acceleration (not needed in headless mode)
    options.add_argument("--no-sandbox")  # Optional: Disable sandboxing (useful in CI environments)
    #
    # # Get the path to the ChromeDriver executable
    # chrome_driver_path = ChromeDriverManager().install()
    #
    # # Set up the ChromeDriver service
    # service = Service(executable_path=chrome_driver_path)
    #
    # # Initialize the Chrome WebDriver with options and service
    # driver = webdriver.Chrome(service=service, options=options)
    #
    # # Get the instance of SeleniumLibrary and set the driver
    # selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    # selenium_lib.driver = driver  # This replaces the default driver with the custom one

