package org.example;

import io.cucumber.java.en.Then;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HomePageStepDefs extends AbstractStepDefs {

    @Then("verify page {string}")
    public void RightPages(String arg0) {
        String currentUrl = driver.getCurrentUrl();
        String expectedUrl = arg0;

        if (!currentUrl.equals(expectedUrl)) {
            throw new AssertionError("Problem current URL is: " + currentUrl);
        }
    }

}
