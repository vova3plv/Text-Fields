import UIKit

class OnlyCharactersFieldDelegates: BaseTextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return false }
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z]{0,5}(-[0-9]{0,5})?$")
        let newText = (text as NSString).replacingCharacters(in: range, with: string)
        if regex.firstMatch(in: newText, range: NSRange(location: 0, length: newText.count)) != nil {
            return true
        }
        return false
    }
    
}
