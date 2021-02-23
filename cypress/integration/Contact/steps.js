
Given(/^I access the URL "([^"]*)"$/, (url) => {
	cy.visit(url);
});

When(/^I click at the link "([^"]*)"$/, (link) => {
  //  Click at the first ocurrence of an <a> tag that contains "link" in its inner text.
	//  cy.xpath(`(//a[text()[contains(.,"${link}")]])[1]`).click();
  cy.get("a").contains("Contact Us").click();
});


When(/^I click at the button I SEEK JOINING THE KINGDOM$/, () => {
  cy.get('button[class="button--user__intention"]').click();
});


Then(/^I should see the contact form containing the input fields "([^"]*)"$/, (inputList) => {
	const inputsArray = inputList.split(",");
  inputsArray.map((input) => {
    cy.get(`[placeholder="${input}"]`).should("be.visible");
  })
});

Then(/^I should see the button SEND$/, () => {
	cy.get('[type="submit"]').should("be.visible");
});

When(/^I write "([^"]*)" into the input field "([^"]*)"$/, (txt,field) => {
  cy.get(`[placeholder="${field}"]`).type(txt);
});

Then(/^The value of the field "([^"]*)" should be "([^"]*)"$/, (field, expectedValue) => {
  cy.get(`[placeholder="${field}"]`).should("have.value",expectedValue);
});


When(/^I click at the button SEND$/, () => {
  cy.get('[type="submit"]').click();
});

Then(/^I should see the error message "(.*)" because i haven't informed "([^"]*)"$/, (errorMessage,emptyField) => {
  cy.get(`[placeholder='${emptyField}']`).then((input) => {
    expect(input[0].validationMessage).to.eq(errorMessage);
  })
});


Then(/^I should see an error message informing that the e-mail must have the at sign$/, () => {
  cy.get(`[placeholder='Email']`).then((input) => {
    expect(input[0].validationMessage).to.eq('Inclua um "@" no endereço de e-mail. "teste" está com um "@" faltando.');
  })
});


Then(/^I should see the text "([^"]*)" and the success message "([^"]*)"$/, (txt,successMessage) => {
  cy.wait(3000);
	cy.get('[class="swal-title"]').should("has.text",txt);
	cy.get('[class="swal-text"]').should("has.text",successMessage);
});


Then(/^I click at the button "([^"]*)"$/, (btn) => {
  cy.wait(3000);
	cy.get("button").contains(btn).click();
});


Then(/^The Sucess modal must close$/, () => {
  cy.get('[class="swal-modal"]').should("be.hidden");
});



