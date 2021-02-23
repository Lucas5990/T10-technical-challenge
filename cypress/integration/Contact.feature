Feature: Contact Us Form
    @CT001
    Scenario: Checks that Contact form is presented
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        Then I should see the contact form containing the input fields "Name,Email,Phone,Type here your message"
        And I should see the button SEND
    @CT002
    Scenario: Checks that TextBox "Name" is enabled
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "Lucas" into the input field "Name"
        Then The value of the field "Name" should be "Lucas"
    @CT003
    Scenario: Checks that TextBox "Email" is enabled
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "test@mail.com" into the input field "Email"
        Then The value of the field "Email" should be "test@mail.com"
    @CT004
    Scenario: Checks that TextBox "Phone" is enabled
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "988991122" into the input field "Phone"
        Then The value of the field "Phone" should be "988991122"
    @CT005
    Scenario: Checks that TextBox "Type here your message" is enabled
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae." into the input field "Type here your message"
        Then The value of the field "Type here your message" should be "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae."
    @CT006
    Scenario: Checks functionality of the button "Send" when "Name" is not informed
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I click at the button SEND
        Then I should see the error message "Preencha este campo." because i haven't informed "Name"
    @CT007
    Scenario: Checks functionality of the button "Send" when "Email" is not informed
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "Lucas" into the input field "Name"
        And I click at the button SEND
        Then I should see the error message "Preencha este campo." because i haven't informed "Email"
    @CT008
    Scenario: Checks functionality of the button "Send" when "Phone" is not informed
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "Lucas" into the input field "Name"
        And I write "teste@mail.com" into the input field "Email"
        And I click at the button SEND
        Then I should see the error message "Preencha este campo." because i haven't informed "Phone"
    @CT009
    Scenario: Checks functionality of the button "Send" when the form is filled correctly
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "Lucas" into the input field "Name"
        And I write "teste@mail.com" into the input field "Email"
        And I write "988774455" into the input field "Phone"
        And I write "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae." into the input field "Type here your message"
        And I click at the button SEND
        Then I should see the text "Obrigado!" and the success message "Sua mensagem foi enviada com sucesso, assim que possível entraremos em contato."
    @CT010
    Scenario: Checks functionality of the button "OK" at the Success Modal
        Given I access the URL "https://t10.digital/"
        When I click at the link "Contact Us"
        And I click at the button I SEEK JOINING THE KINGDOM
        When I write "Lucas" into the input field "Name"
        And I write "teste@mail.com" into the input field "Email"
        And I write "988774455" into the input field "Phone"
        And I write "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae." into the input field "Type here your message"
        And I click at the button SEND
        When I click at the button "OK"
        Then The Sucess modal must clo
