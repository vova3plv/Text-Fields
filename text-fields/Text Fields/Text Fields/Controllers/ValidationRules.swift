import Foundation

class ValidationRules {
    static func isValid(text: String, pattern: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        return predicate.evaluate(with: text)
    }
}
