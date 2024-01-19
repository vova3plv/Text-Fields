import UIKit

class InputLimitFieldDelegates: BaseTextFieldDelegate {
    
    var countLetters: UILabel!
    
    override func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let count = textField.text?.count else { return }
        if count > 10 {
            textField.layer.borderColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
        } else {
            super.textFieldDidBeginEditing(textField)
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        guard let text = textField.text else { return false }
        let newText = (text as NSString).replacingCharacters(in: range, with: string)
        let newCharacterCount = 10 - newText.count
        let newCount = text.count + string.count - range.length
        countLetters.text = String(newCount) + "/10"
        
        let attributedString = NSMutableAttributedString(string: newText)
        
        if newCharacterCount < 0 {
            let overLimiteRange = NSRange(location: 10, length: newText.count - 10)
            attributedString.addAttribute(.foregroundColor, value: UIColor.red, range: overLimiteRange)
            textField.layer.borderColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
            countLetters.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        } else {
            textField.layer.borderColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 1).cgColor
            countLetters.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        let withinLimitRange = NSRange(location: 0, length: min(newText.count, 10))
        attributedString.addAttribute(.foregroundColor, value: UIColor.black, range: withinLimitRange)
        
        textField.attributedText = attributedString
        
        return false
    }

}
