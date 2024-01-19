import UIKit

class ViewController: UIViewController {
    
    let textFieldsView = TextFieldsView()
    
    //сильная ссылка на делегаты
    private let noDigitsFieldDelegates = NoDigitsFieldDelegates()
    private let inputLimitFieldDelegates = InputLimitFieldDelegates()
    private let onlyCharactersFieldDelegates = OnlyCharactersFieldDelegates()
    private let linkFieldDelegates = LinkFieldDelegates()
    private let validationRulesFieldDelegates = ValidationRulesFieldDelegates()
    
    override func loadView() {
        self.view = textFieldsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupDelegates()        
        
//        for family in UIFont.familyNames.sorted() {
//            let names = UIFont.fontNames(forFamilyName: family)
//            print("Family: \(family) Font names: \(names)")
//        }
    }
    
    
    func setupDelegates() {
        //no digits field delegate
        textFieldsView.noDigitsField.delegate = noDigitsFieldDelegates
        
        //input limit field delegate
        inputLimitFieldDelegates.countLetters = textFieldsView.countLettersLabel
        textFieldsView.inputLimitField.delegate = inputLimitFieldDelegates
        
        //only characters field delegate
        textFieldsView.onlyCharacterField.delegate = onlyCharactersFieldDelegates
        
        //link field delegate
        linkFieldDelegates.viewController = self
        textFieldsView.linkField.delegate = linkFieldDelegates
        
        //validation rules field delegate
        validationRulesFieldDelegates.validationRuleLabels = [
                        textFieldsView.firstValidationRuleLabel,
                        textFieldsView.secondValidationRuleLabel,
                        textFieldsView.thirdValidationRuleLabel, 
                        textFieldsView.fourthValidationRuleLabel
        ]
        validationRulesFieldDelegates.strengthIndicator = textFieldsView.strengthIndicator
        textFieldsView.validationRulesField.delegate = validationRulesFieldDelegates
            //add validation rules
        validationRulesFieldDelegates.patterns = ["\\w{8,}", ".*[0-9].*", ".*[a-z].*", ".*[A-Z].*"]
    }
    
}

