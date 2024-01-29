# Text Field

Application with text fields for different needs.

## Stack

 - Swift
 - UIKit
 - Auto Layout
 - MVC
 - Design instruments: Figma

## Additions & explanations

#### First text field
When the user typing or paste string from buffer – everything remains except digits. 

Input: “String with 123 digits”, result: “String with  digits”.

#### Second text field
Maximum allowed input size 10 characters, but we don’t limit but indicate this to the user.

Input: “Long string with overflow”, result: -n on red counter label and red text field border.

#### Third text field
mask which allows input only allowed characters. 

Mask: “wwwww-ddddd”, example input: “abcde-12345”.

#### Fourth text field
when the user input or pastes the copied link, opens it in SFSafariViewController. Valid link in this text field starts with “http...”. 

#### Fifth text field
added strong password validation rules, min 1 digit, min 1 lowercase, min 1 capital required. Min length 8 characters. Indicated rules execution & strength.

## Usage

### Fields are not filled
<img src="https://github.com/vova3plv/Text-Fields/blob/main/Usage/2024-01-29%2012.49.06.jpg" width="300" >

### Fields are filled
<img src="https://github.com/vova3plv/Text-Fields/blob/main/Usage/2024-01-29%2012.50.16.jpg" width="300" >

### Opened SafariVC
<img src="https://github.com/vova3plv/Text-Fields/blob/main/Usage/2024-01-29%2012.50.28.jpg" width="300" >


