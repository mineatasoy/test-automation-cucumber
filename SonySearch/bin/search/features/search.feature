#Author: Mine Atasoy
Feature: Functionality of Sony Search page
  		 1. Search via a word
  		 2. Search via product number
  		 3. Search performance

  ##Notes:
  ##For all scenarios, for checking the results (Then step), some more functinality can be added
  ##such as checking search results. I could not find a way to get search details from Sony search page.
  ##I would use driver.findElement(By..) methods, but there was no id or name of the elements.
  ##Also search box (inputtext field) seems not visible. An exception was thrown.
  ## For the 3rd scenario the response time for the query can be measured
  ## and compared with a value that is expected to ensure
  ## that the performance is not effected with the last changes in the build
  ## and another parameter can be used to force the system instead of "a"
  
  ##Also please consider that these are my first automation cases :)
  
  
  
  Scenario: 1. Search via a word - "camera"
    Given Create Chrome WebDriver
    When User navigates Sony Search page with "camera"
    Then Search should be successful

  Scenario: 2. Search via product number - "MDR-1000X"
    Given Create Chrome WebDriver
    When User navigates Sony Search page with "MDR-1000X"
    Then Search should be successful

  Scenario: 3. Search performance
    Given Create Chrome WebDriver
    When User navigates Sony Search page with "a"
    Then Search should be successful
