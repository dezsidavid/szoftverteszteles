package org.example;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class RemoveStepDefs extends AbstractStepDefs {

    @Given("the {string} is removed from the cart")
    public void somethingisremovedfromthecart(String item) {
        homePage.RemoveItemFromCart(item);
    }

    @Then("verify pageRemove {string}")
    public void RightFlok(String arg0) {
        String currentUrl = driver.getCurrentUrl();
        String expectedUrl = arg0;

        if (!currentUrl.equals(expectedUrl)) {
            throw new AssertionError("Problem current URL is: " + currentUrl);
        }
    }
}