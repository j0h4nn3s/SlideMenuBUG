//
//  MainController.swift
//  MenuTest
//
//  Created by Johannes Hubert on 14.11.17.
//  Copyright © 2017 Johannes Hubert. All rights reserved.
//

import Foundation
import UIKit

class MainController: UIViewController {
    private var testView: UIView?
    private var testLabel: UILabel?
    
    override func viewDidLoad() {
        self.view.backgroundColor = .purple
        
        self.testView = UIView(frame: self.view.bounds)
        self.testView?.backgroundColor = .green
        
        self.testLabel = UILabel(frame: self.view.bounds)
        self.testLabel?.text = "TESTTESTESTESTESTESTESTESTEST"
        
        self.view.addSubview(self.testView!)
        self.view.addSubview(self.testLabel!)
    }
    
    override func viewDidLayoutSubviews() {
        let safeAreaTop = self.view.safeAreaInsets.top
        let height = self.view.bounds.size.height - 40 - safeAreaTop
        let width = self.view.bounds.size.width - 40
        
        self.testView?.frame = CGRect(x: 20, y: 20 + safeAreaTop, width: width, height: height)
        
        let size = self.testLabel?.sizeThatFits(self.view.bounds.size)
        self.testLabel?.frame = CGRect(origin: CGPoint(x: 20, y: 20 + safeAreaTop), size: size!)
        
    }
}
