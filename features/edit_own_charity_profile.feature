Feature: Charity worker can edit own charity profile
  As a charity worker
  So that I can increase my charity's visibility
  I want to edit my charity's web page (description and contact details)
  Tracker story ID: 45671099

#address of friendly clone must be 30 pinner road because of change the address of charity scenario
#need to revisit this
Background: organizations have been added to database 
  Given the following organizations exist:
  | name           | description               | address        | postcode | telephone |
  | Friendly       | Bereavement Counselling   | 34 pinner road | HA1 4HZ  | 020800000 |
  | Friendly Clone | Quite Friendly!           | 30 pinner road | HA1 4HZ  | 020800010 |

Scenario: Change the address of a charity
  Given I am on the edit charity page for "Friendly"
  And I edit the charity address to be "30 pinner road"
  And I press "Update Organization"
  Given I am on the home page
  Then the coordinates for "Friendly Clone" and "Friendly" should be the same

Scenario: By default, not display organizations address and phone number on home page
  Given I am on the home page
  Then I should not see any address or telephone information for "Friendly Clone" and "Friendly"

Scenario: By default, not display organizations edit and delete on home page
  Given I am on the home page
  Then I should not see any edit or delete links

Scenario: By default, not display organizations address and phone number on details page
  Given I am on the charity page for "Friendly"
  Then I should not see any address or telephone information for "Friendly"

Scenario: By default, not display edit link on details page
  Given I am on the charity page for "Friendly"
  Then I should not see any edit link for "Friendly"
