package org.example;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Shop2StepDefs extends AbstractStepDefs {

    @Given("the {string} is added to the cart shop2")
    public void somethingIsAddedToTheCart(String item) {
        homePage.addItemToCart(item);
    }

    @Then("verify pageShop2 {string}")
    public void RightFlok(String arg0) {
        String currentUrl = driver.getCurrentUrl();
        String expectedUrl = arg0;

        if (!currentUrl.equals(expectedUrl)) {
            throw new AssertionError("Problem current URL is: " + currentUrl);
        }
    }
}
