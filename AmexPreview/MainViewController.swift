//
//  ViewController.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    //MARK: - Properties
    
    private let topImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = R.Images.card
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private let cardNameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = R.Fonts.regular(with: 15)
        label.text = R.Strings.cardName
        
        return label
    }()
    
    private let cardNumberLabel : UILabel = {
        let label = UILabel()
        label.textColor = R.Colors.secondary
        label.font = R.Fonts.regular(with: 13)
        label.text = R.Strings.cardNumber
        
        return label
    }()
    
    private let menuIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = R.Images.menu
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = R.Colors.secondary
        
        return imageView
    }()
    
    private let titleStack : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        
        return stack
    }()
    
    private let infoView = FundsInfoView()
    
    private let payButton : UIButton = {
        let button = UIButton()
        button.setTitle("Pay Now", for: .normal)
        button.backgroundColor = R.Colors.primary
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.titleLabel?.font = R.Fonts.bold(with: 17)
        
        return button
    }()
    
    let cellId = "ListCellView"
    
    var tableView = UITableView()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createUI()
    }
    
    //MARK: - Helpers
    
    private func createUI() {
        view.addSubview(topImageView)
        view.addSubview(titleStack)
        titleStack.addArrangedSubview(cardNameLabel)
        titleStack.addArrangedSubview(cardNumberLabel)
        view.addSubview(menuIcon)
        view.addSubview(infoView)
        view.addSubview(payButton)
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ListCellView.self, forCellReuseIdentifier: cellId)
        tableView.rowHeight = 60
        tableView.separatorStyle = .singleLine
        
        topImageView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(self.view.snp.leading).offset(15)
            make.width.equalTo(57)
            make.height.equalTo(36)
        }
        
        titleStack.snp.makeConstraints { make in
            make.top.equalTo(topImageView.snp.top)
            make.leading.equalTo(topImageView.snp.trailing).offset(13)
        }
        
        menuIcon.snp.makeConstraints { make in
            make.centerY.equalTo(topImageView)
            make.trailing.equalTo(self.view.snp.trailing).offset(-15)
            make.height.width.equalTo(20)
        }
        
        infoView.snp.makeConstraints { make in
            make.top.equalTo(topImageView.snp.bottom).offset(20)
            make.leading.equalTo(self.view.snp.leading).offset(15)
            make.trailing.equalTo(self.view.snp.trailing).offset(-15)
            make.height.equalTo(150)
        }
        
        payButton.snp.makeConstraints { make in
            make.top.equalTo(infoView.snp.bottom).offset(10)
            make.leading.equalTo(infoView.snp.leading)
            make.trailing.equalTo(infoView.snp.trailing)
            make.height.equalTo(50)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(payButton.snp.bottom).offset(20)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    //MARK: - Selectors
}


extension MainViewController: UITableViewDelegate {

}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ListCellView
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
