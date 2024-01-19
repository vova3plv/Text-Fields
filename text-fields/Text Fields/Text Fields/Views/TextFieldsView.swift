import UIKit

class TextFieldsView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Text Fields"
        label.textAlignment = .center
        label.font = UIFont(name: "Rubik-Medium", size: 34)
        return label
    }()
    
    private let noDigitsLabel: UILabel = {
        let label = UILabel()
        label.attributedLabel(text: "NO digits field")
        return label
    }()
    
    lazy var countLettersLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "0/10"
        return label
    }()
    
    let noDigitsField: UITextField = {
        let textField = UITextField()
        textField.attributedTextField(text: "Type here")
        return textField
    }()
    
    private let inputLimitLabel: UILabel = {
        let label = UILabel()
        label.attributedLabel(text: "Input limit")
        return label
        
    }()
    
    let inputLimitField: UITextField = {
        let textField = UITextField()
        textField.attributedTextField(text: "Type here")
        return textField
    }()
    
    private let onlyCharactersLabel: UILabel = {
        let label = UILabel()
        label.attributedLabel(text: "Only characters")
        return label
    }()
    
    let onlyCharacterField: UITextField = {
        let textField = UITextField()
        textField.attributedTextField(text: "wwwww-ddddd")
        return textField
    }()
    
    private let linkLabel: UILabel = {
        let label = UILabel()
        label.attributedLabel(text: "Link")
        return label
    }()
    
    let linkField: UITextField = {
        let textField = UITextField()
        textField.attributedTextField(text: "http://example.com")
        return textField
    }()
    
    private let validationRulesTitleLabel: UILabel = {
        let label = UILabel()
        label.attributedLabel(text: "Validation Rules")
        return label
    }()
    
    let firstValidationRuleLabel: UILabel = {
        var label = UILabel()
        label.attributedValidationRuleLabel(text: "Min length 8 characters.")
        return label
    }()
    
    let secondValidationRuleLabel: UILabel = {
        var label = UILabel()
        label.attributedValidationRuleLabel(text: "Min 1 digit,")
        return label
    }()
    
    let thirdValidationRuleLabel: UILabel = {
        var label = UILabel()
        label.attributedValidationRuleLabel(text: "Min 1 lowercase,")
        return label
    }()
    
    let fourthValidationRuleLabel: UILabel = {
        var label = UILabel()
        label.attributedValidationRuleLabel(text: "Min 1 capital required.")
        return label
    }()
    
    let validationRulesField: UITextField = {
        let textField = UITextField()
        textField.attributedTextField(text: "Password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let strengthIndicator: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progressViewStyle = .bar
        progressView.trackTintColor = .clear
        return progressView
    }()
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Constraints
    func setupViews() {
        setupTitleLabelView()
        setupNoDigitsViews()
        setupInputLimitViews()
        setupOnlyCharactersViews()
        setupLinkViews()
        setupValidationRulesViews()
    }
    
    func setupTitleLabelView() {
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
    func setupNoDigitsViews() {
        addSubview(noDigitsLabel)
        addSubview(noDigitsField)
        
        NSLayoutConstraint.activate([
            noDigitsLabel.leadingAnchor.constraint(equalTo: noDigitsField.leadingAnchor),
            noDigitsLabel.bottomAnchor.constraint(equalTo: noDigitsField.topAnchor, constant: -4),
            
            noDigitsField.heightAnchor.constraint(equalToConstant: 36),
            noDigitsField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            noDigitsField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            noDigitsField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60)
        ])
    }
    
    func setupInputLimitViews() {
        addSubview(inputLimitLabel)
        addSubview(countLettersLabel)
        addSubview(inputLimitField)
        
        NSLayoutConstraint.activate([
            inputLimitLabel.leadingAnchor.constraint(equalTo: inputLimitField.leadingAnchor),
            inputLimitLabel.bottomAnchor.constraint(equalTo: inputLimitField.topAnchor, constant: -4),
            
            countLettersLabel.trailingAnchor.constraint(equalTo: inputLimitField.trailingAnchor),
            countLettersLabel.bottomAnchor.constraint(equalTo: inputLimitField.topAnchor, constant: -7),
            
            inputLimitField.heightAnchor.constraint(equalToConstant: 36),
            inputLimitField.topAnchor.constraint(equalTo: noDigitsField.bottomAnchor, constant: 54),
            inputLimitField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            inputLimitField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }

    func setupOnlyCharactersViews() {
        addSubview(onlyCharactersLabel)
        addSubview(onlyCharacterField)
        
        NSLayoutConstraint.activate([
            onlyCharactersLabel.leadingAnchor.constraint(equalTo: onlyCharacterField.leadingAnchor),
            onlyCharactersLabel.bottomAnchor.constraint(equalTo: onlyCharacterField.topAnchor, constant: -4),
            
            onlyCharacterField.heightAnchor.constraint(equalToConstant: 36),
            onlyCharacterField.topAnchor.constraint(equalTo: inputLimitField.bottomAnchor, constant: 54),
            onlyCharacterField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            onlyCharacterField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }

    func setupLinkViews() {
        addSubview(linkLabel)
        addSubview(linkField)
        
        NSLayoutConstraint.activate([
            linkLabel.leadingAnchor.constraint(equalTo: linkField.leadingAnchor),
            linkLabel.bottomAnchor.constraint(equalTo: linkField.topAnchor, constant: -4),
            
            linkField.heightAnchor.constraint(equalToConstant: 36),
            linkField.topAnchor.constraint(equalTo: onlyCharacterField.bottomAnchor, constant: 54),
            linkField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            linkField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }

    func setupValidationRulesViews() {
        addSubview(validationRulesTitleLabel)
        addSubview(validationRulesField)
        addSubview(firstValidationRuleLabel)
        addSubview(secondValidationRuleLabel)
        addSubview(thirdValidationRuleLabel)
        addSubview(fourthValidationRuleLabel)
        addSubview(strengthIndicator)
        
        NSLayoutConstraint.activate([
            validationRulesTitleLabel.leadingAnchor.constraint(equalTo: validationRulesField.leadingAnchor),
            validationRulesTitleLabel.bottomAnchor.constraint(equalTo: validationRulesField.topAnchor, constant: -4),
            
            validationRulesField.heightAnchor.constraint(equalToConstant: 36),
            validationRulesField.topAnchor.constraint(equalTo: linkField.bottomAnchor, constant: 54),
            validationRulesField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            validationRulesField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            firstValidationRuleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            firstValidationRuleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -213),
            firstValidationRuleLabel.topAnchor.constraint(equalTo: validationRulesField.bottomAnchor, constant: 8),
            
            secondValidationRuleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            secondValidationRuleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -213),
            secondValidationRuleLabel.topAnchor.constraint(equalTo: firstValidationRuleLabel.bottomAnchor, constant: 4),
            
            thirdValidationRuleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            thirdValidationRuleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -213),
            thirdValidationRuleLabel.topAnchor.constraint(equalTo: secondValidationRuleLabel.bottomAnchor, constant: 4),
            
            fourthValidationRuleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            fourthValidationRuleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -213),
            fourthValidationRuleLabel.topAnchor.constraint(equalTo: thirdValidationRuleLabel.bottomAnchor, constant: 4),
            
            strengthIndicator.heightAnchor.constraint(equalToConstant: 6),
            strengthIndicator.topAnchor.constraint(equalTo: validationRulesField.bottomAnchor, constant: -6.5),
            strengthIndicator.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            strengthIndicator.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
        ])
    }
    
}

