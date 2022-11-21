//
//  BaseInfoView.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit
import SnapKit

class BaseInfoView: RootUIView {
    
    let content : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = R.Colors.base?.cgColor
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        
        return view
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension BaseInfoView {
    
    override func addView() {
        super.addView()
        
        addSubview(content)
    }
    
    override func layout() {
        super.layout()
        
        content.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
}
