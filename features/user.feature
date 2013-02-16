Feature: Manage WordPress users

  Scenario: Creating/deleting users
    Given WP install

    When I run `wp user create testuser testuser@example.com --porcelain`
    Then the return code should be 0
    And STDOUT should match '%d'

    When I run `wp user delete <STDOUT>`
    Then the return code should be 0
    And STDOUT should not be empty
