package org.example;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static org.example.AbstractStepDefs.driver;
import static org.example.AbstractStepDefs.homePage;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class Shop3StepDefs {

    @Given("the {string} is added to the cart shop3")
    public void somethingIsAddedToTheCart(String item) {
        homePage.addItemToCart(item);
    }

    @Given("the {string} is removed from the cart shop3")
    public void somethingisremovedfromthecart(String item) {
        homePage.RemoveItemFromCart(item);
    }

    @Then("the price should readshop3 {string}")
    public void thePriceShouldRead(String total) {
        assertEquals(total, homePage.getTotal());
    }

    @Then("verify pageShop3 {string}")
    public void RightFlok(String arg0) {
        String currentUrl = driver.getCurrentUrl();
        String expectedUrl = arg0;

        if (!currentUrl.equals(expectedUrl)) {
            throw new AssertionError("Problem current URL is: " + currentUrl);
        }
    }
}
