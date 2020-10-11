Feature: User can manually add movie.

    Scenario: Go to homepage
        Given I am on the RottenPotatoes home page
        Then I should see "RottenPotatoes"
        And I should see "All Movies"
        And I should see "No."
        And I should see "Movie Title"
        And I should see "Rating"
        And I should see "Release Date"
        And I should see "More Info"

    Scenario: Add a movie
        Given I am on the RottenPotatoes home page
        When I follow "Add new movie"
        Then I should be on the Create New Movie page
        When I fill in "Title" with "Men In Black"
        And I select "PG-13" from "Rating"
        And I press "Save Changes"
        Then I should be on Men In Black page
        And I should see "Men In Black"