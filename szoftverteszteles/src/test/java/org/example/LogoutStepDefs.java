package org.example;

import io.cucumber.java.en.Then;

public class LogoutStepDefs extends AbstractStepDefs {

    @Then("verify pageLogout {string}")
    public void RightPages(String arg0) {
        String currentUrl = driver.getCurrentUrl();
        String expectedUrl = arg0;

        if (!currentUrl.equals(expectedUrl)) {
            throw new AssertionError("Problem current URL is: " + currentUrl);
        }
    }
}
