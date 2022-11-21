//
//  RootUIView.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit

class RootUIView: UIView {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        layout()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
}

@objc extension RootUIView {
    func addView() {}
    func layout() {}
    func configure() {}
}
