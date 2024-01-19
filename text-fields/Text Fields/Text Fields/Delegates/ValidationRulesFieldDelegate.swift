import UIKit

class ValidationRulesFieldDelegates: BaseTextFieldDelegate {
    
    var validationRuleLabels: [UILabel]!
    
    var strengthIndicator: UIProgressView!
    
    var patterns: [String]!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return false }
        let newText = (text as NSString).replacingCharacters(in: range, with: string)
        var ruleCount = 0
        
        for (index, pattern) in patterns.enumerated() {
            var flag = ValidationRules.isValid(text: newText, pattern: pattern)
            updateValidation(index: index, isValid: flag, count: &ruleCount)
        }
        
        updateIndicator(with: ruleCount)
        
        return true
    }

    private func updateValidation(index: Int, isValid: Bool, count: inout Int) {
        validationRuleLabels[index].textColor = isValid ? .systemGreen : UIColor(red: 0.342, green: 0.342, blue: 0.342, alpha: 1)
        if isValid {
            count += 1
        }
    }
    
    private func updateIndicator(with ruleCount: Int) {
        strengthIndicator.setProgress(Float(ruleCount) / Float(validationRuleLabels.count), animated: false)
        switch ruleCount {
        case 1:
            strengthIndicator.tintColor = .red
        case 2:
            strengthIndicator.tintColor = .orange
        case 3:
            strengthIndicator.tintColor = UIColor(red: 1.0, green: 0.74, blue: 0.3, alpha: 1.0)
        case 4:
            strengthIndicator.tintColor = .systemGreen
        default:
            break
        }
    }
}
