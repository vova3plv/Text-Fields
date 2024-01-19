import UIKit

extension UILabel {
    func attributedLabel(text: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = UIFont(name: "Rubik-Regular", size: 13)
    }
    
    func attributedValidationRuleLabel(text: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.frame = CGRect(x: 0, y: 0, width: 138, height: 88)
        self.textColor = UIColor(red: 0.342, green: 0.342, blue: 0.342, alpha: 1)
        self.font = UIFont(name: "Rubik-Regular", size: 13)
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.43
        self.attributedText = NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.kern: -0.41, NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
}
