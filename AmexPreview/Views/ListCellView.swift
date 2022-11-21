//
//  ListCellView.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit
import SnapKit

class ListCellView: UITableViewCell {
    //MARK: - Properties
    
    private let logoView: UIImageView = {
        let view = UIImageView()
        view.image = R.Images.logo
        view.layer.cornerRadius = 5
        
        return view
    }()
    
    private let priceStack = BaseStackView(with: "text", and: "text", align: .right)
    
    private let titleStack = BaseStackView(with: "test", and: "test", align: .left)
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
        configure()
    }
    
    init(data: TableData) {
        super.init(style: .default, reuseIdentifier: "")
        logoView.image = data.image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func layout() {
        addSubview(logoView)
        addSubview(priceStack)
        addSubview(titleStack)
        
        logoView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(15)
        }
        
        titleStack.snp.makeConstraints { make in
            make.top.equalTo(logoView)
            make.bottom.equalTo(logoView)
            make.leading.equalTo(logoView.snp.trailing).offset(10)
        }
        
        priceStack.snp.makeConstraints { make in
            make.centerY.equalTo(logoView)
            make.trailing.equalToSuperview().offset(-15)
        }
    }
    
    func configure() {
        titleStack.configure(with: R.Fonts.regular(with: 15), and: R.Fonts.regular(with: 13))
        titleStack.configure(with: R.Colors.secondary!)
        
        priceStack.configure(with: R.Fonts.regular(with: 15), and: R.Fonts.regular(with: 13))
        priceStack.configure(with: R.Colors.secondary!)
    }
    
//    func configureData() {
//
//    }
    
    //MARK: - Selectors
}

extension ListCellView {
    struct TableData {
        var image: UIImage
        var title: String
        var subTitle: String
        var price: String
        var date: String
    }
}
