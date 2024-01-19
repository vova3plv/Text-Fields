import UIKit

class NoDigitsFieldDelegates: BaseTextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return !allowedCharacters.isSuperset(of: characterSet)
    }
}
