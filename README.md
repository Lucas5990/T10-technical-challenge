# T10-technical-challenge :european_castle:

Automated tests project using JavaScript, Cypress and Cucumber, made as a demonstration of technical knowledge for a QA role at the company T10. The challenge description is:

> "Gostaríamos que você implementasse um projeto simples de validação do formulário de contato que o site da T10 contém pra conhecermos mais do seu potencial técnico. Você está livre para desenvolver os cenários que achar pertinente e, não se preocupe, estamos totalmente cientes de que esse seria um contato inicial com o framework que utilizamos. Se atente, principalmente, a desenvolver os testes da forma que você considera correta.
> Funcionalidade a ser automatizada: Contact Us > Opção I seek joining the kingdom > Formulário de Contato"

## Test Cases :white_check_mark:

### Test Scenary: Contact Us -> Opção I seek joining the kingdom -> Formulário de Contato

| Test Case ID | Test Case Name                                                              | Progress - Status |
| ------------ | --------------------------------------------------------------------------- | ----------------- |
| CT001        | Checks that Contact form is presented                                       | Done - Passed     |
| CT002        | Checks that TextBox "Name" is enabled                                       | Done - Passed     |
| CT003        | Checks that TextBox "Email" is enabled                                      | Done - Passed     |
| CT004        | Checks that TextBox "Phone" is enabled                                      | Done - Passed     |
| CT005        | Checks that TextBox "Type here your message" is enabled                     | Done - Passed     |
| CT006        | Checks functionality of the button "Send" when "Name" is not informed       | Done - Passed     |
| CT007        | Checks functionality of the button "Send" when "Email" is not informed      | Done - Passed     |
| CT008        | Checks functionality of the button "Send" when "Phone" is not informed      | Done - Passed     |
| CT009        | Checks functionality of the button "Send" when the form is filled correctly | Done - Passed     |
| CT010        | Checks functionality of the button "OK" at the Success Modal                 | Done - Passed     |

## Extra Test Cases :ballot_box_with_check:

-These test cases were mapped, but weren't selected to be automated though.

| Test Case Name                                                                             | Reason Not Automated                                                                          |
| ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------- |
| Checks functionality of the button "Send" when "Email" doesn't have the at sign            | The error message has double quotes and i wasn't able to escape them at the .feature file     |
| Checks functionality of the button "Send" when "Email" has no characters after the at sign | The error message has double quotes and i wasn't able to escape them at the .feature file     |
| Checks functionality of the button "Send" when "Phone" has alphabetic characters           | The Phone field accepts alphabetic characters (BUG :bug:) so i dodn't know the error message. |
| Checks functionality of the button "Send" when "Phone" has special characters              | The Phone field accepts special characters (BUG :bug:) so i don't know the error message.    |

---

## Bugs Found :bug:

| ID  | Description                                           | Expected Result            |
| --- | ----------------------------------------------------- | -------------------------- |
| 01  | Phone input accepts Alphabetic and Special characters | Should accept Numbers only |

---

## Observations :grey_exclamation:

#### If i had more time i would try to:

- Use setup and teardown hooks/steps to avoid repeating myself;
- Run same tests agains't different screen sizes (responsive);
- Work on the execution reports.
