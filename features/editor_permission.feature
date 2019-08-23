Feature: Test editor permission
 @api
 In order to test editor permission
 As a user of type Editor
 I won't be able to create contents

 Scenario: Test Editor Permissions
  Given I am logged in as an "editor"
   When I go to "/node/add/article"
   Then I should see text matching "Access denied"

