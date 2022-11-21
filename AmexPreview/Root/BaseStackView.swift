//
//  BaseStackView.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit
import SnapKit

final class BaseStackView : UIView {
    
    private let titleLabel = UILabel()
    
    private let valueLabel = UILabel()
    
    private let stack : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        
        return stack
    }()
    
    init(with title: String, and value: String, align alignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.titleLabel.text = title
        self.valueLabel.text = value
        
        self.titleLabel.textAlignment = alignment
        self.valueLabel.textAlignment = alignment
        
        addViews()
        layout()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with titleFont: UIFont, and valueFont: UIFont) {
        titleLabel.font = titleFont
        valueLabel.font = valueFont
    }
    
    func configure(with color: UIColor) {
        titleLabel.textColor = .black
        valueLabel.textColor = color
    }
}

private extension BaseStackView {
    func addViews() {
        addSubview(stack)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(valueLabel)
    }
    
    func layout() {
        stack.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
    
    func configure() {
        titleLabel.font = R.Fonts.regular(with: 15)
        titleLabel.textColor = R.Colors.secondary
        
        valueLabel.font = R.Fonts.bold(with: 20)
        valueLabel.textColor = .black
    }
}
