Feature: A feature to demonstrate DB cucumber util to setup/teardown/validate data in RDBMS

  Scenario: testing setup/teardown/validate data in RDBMS
    Given I set up data in DB using "createusertable.sql"
    Given I set up data in DB using "insertusers.sql"
    And I teardown data in DB using "teardownusers.sql"
    Given I set up data in DB using "insertuserswithparams.sql" and below parameters:
      | key | value |
      | id1 | 1     |
      | id2 | 2     |
      | id3 | 3     |
    And I teardown data in DB using "teardownuserswithparam.sql" and below parameters:
      | key | value |
      | id1 | 1     |
      | id2 | 2     |
      | id3 | 3     |
    Given I set up data in DB using "insertusers.sql", and rollback test data at the end using "teardownusers.sql"
    Given I set up data in DB using "insertuserswithparams.sql", and rollback test data at the end using "teardownuserswithparam.sql" with below parameters:
      | key | value |
      | id1 | 11     |
      | id2 | 12     |
      | id3 | 13     |
    Given I set up data using the sql file "parameterisedinsertusers.sql" for the below data:
      | id | name      | email              |
      | 21  | Ned Stark | ned@gmail.com      |
      | 22  | Tyrion    | tyrion@yahoo.com   |
      | 23  | Daenerys  | daenerys@gmail.com |
    Then the result of the sql "selectuser.sql" is:
      | id | name      | email              |
      | 1  | Ned Stark | ned@gmail.com      |
      | 2  | Tyrion    | tyrion@yahoo.com   |
      | 3  | Daenerys  | daenerys@gmail.com |
