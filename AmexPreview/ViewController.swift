//
//  ViewController.swift
//  AmexPreview
//
//  Created by Mikhail Kolkov on 11/21/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let viewTest: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(viewTest)
        
        viewTest.snp.makeConstraints { make in
            make.height.width.equalTo(100)
            make.center.equalTo(self.view)
        }
    }
}

