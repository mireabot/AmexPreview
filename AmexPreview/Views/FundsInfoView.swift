//
//  FundsInfoView.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit
import SnapKit

class FundsInfoView: BaseInfoView {
    //MARK: - Properties
    
    private let totalView = BaseStackView(with: "TOTAL DUE", and: "$59,610", align: .left)
    
    private let rewardsView = BaseStackView(with: "REWARDS", and: "4,220 pt", align: .left)
    
    private let titleStack = BaseStackView(with: "MINIMUM DUE", and: "Dec 3rd, 2017", align: .left)
    
    private let valueLabel : UILabel = {
        let label = UILabel()
        label.text = "$7,218"
        label.textColor = .black
        label.font = R.Fonts.bold(with: 44)
        
        return label
    }()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    //MARK: - Selectors
}

extension FundsInfoView {
    override func addView() {
        super.addView()
        
        addSubview(totalView)
        addSubview(rewardsView)
        addSubview(titleStack)
        addSubview(valueLabel)
    }
    
    override func layout() {
        super.layout()
        
        totalView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-40)
        }
        
        rewardsView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-24)
            make.leading.equalTo(totalView.snp.leading)
            
        }
        
        titleStack.snp.makeConstraints { make in
            make.top.equalTo(totalView.snp.top)
            make.leading.equalToSuperview().offset(10)
        }
        
        valueLabel.snp.makeConstraints { make in
            make.bottom.equalTo(rewardsView.snp.bottom)
            make.leading.equalToSuperview().offset(10)
        }
    }
    
    override func configure() {
        super.configure()
        
        totalView.configure(with: R.Fonts.regular(with: 15), and: R.Fonts.bold(with: 20))
        rewardsView.configure(with: R.Fonts.regular(with: 15), and: R.Fonts.bold(with: 20))
        titleStack.configure(with: R.Colors.secondary!)
        titleStack.configure(with: R.Fonts.regular(with: 15), and: R.Fonts.regular(with: 13))
    }
}
