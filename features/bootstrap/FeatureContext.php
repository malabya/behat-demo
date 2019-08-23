<?php

use Behat\Behat\Context\Context;

/**
 * Defines application features from the specific context.
 */
class FeatureContext implements Context {

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {
  }

  /**
   * @Then I save the form
   */
  public function saveThePage() {
    $data = $this->getSession()->getDriver()->getContent();
    file_put_contents("/tmp/behat_form.html", $data);
  }

}
