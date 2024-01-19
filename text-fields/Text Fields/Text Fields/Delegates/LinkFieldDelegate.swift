import UIKit
import SafariServices

class LinkFieldDelegates: BaseTextFieldDelegate {
    
    weak var viewController: UIViewController?
    
    override func textFieldDidEndEditing(_ textField: UITextField) {
        super.textFieldDidEndEditing(textField)
        guard let urlString = textField.text,
              let url = URL(string: urlString),
              let viewController = viewController
        else { return }
        if urlString.starts(with: "http://") || urlString.starts(with: "https://") {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                let safariViewController = SFSafariViewController(url: url)
                viewController.present(safariViewController, animated: true)
            }
        }
    }
}
