Feature: Transitional Protection Calculation during Managed Migration
  As a DWP Decision Maker
  I need the system to calculate transitional protection amounts
  So that claimants are not worse off moving from legacy benefits to UC

  Background:
    Given the claimant is currently receiving Income-related ESA
    And the claimant has been selected for Managed Migration
    And the Migration Notice has been issued with cut-off date "2024-12-01"

  Scenario: High legacy entitlement triggers transitional element
    Given the legacy benefit entitlement was £450.00 weekly
    And the new UC standard allowance is £368.74 monthly
    And the claimant has 2 children (born before 2017)
    When the UC claim is submitted on "2024-11-15"
    Then the system calculates the transitional element as £181.26
    And the total UC award equals £550.00
    And the transitional element erodes by £0.00 (no earnings)
    
  Scenario: Erosion due to surplus earnings
    Given the claimant has an active transitional element of £150.00
    And the claimant reports earnings of £600.00 this month
    When the surplus earnings calculation runs
    Then the transitional element reduces by £375.00 (65% of surplus)
    And the remaining transitional element is £0.00 (minimum floor)
