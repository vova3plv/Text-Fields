import UIKit

extension UITextField {
    func attributedTextField(text: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        self.leftViewMode = .always
        self.placeholder = text
        self.font = UIFont(name: "Rubik-Regular", size: 17)
        self.backgroundColor = UIColor(red: 0.463, green: 0.463, blue: 0.502, alpha: 0.12)
        self.layer.cornerRadius = 10
    }
}
