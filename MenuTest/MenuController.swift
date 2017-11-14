//
//  MenuController.swift
//  MenuTest
//
//  Created by Johannes Hubert on 14.11.17.
//  Copyright © 2017 Johannes Hubert. All rights reserved.
//

import Foundation
import UIKit

class MenuController: UIViewController {
    private var testView: UIView?
    
    override func viewDidLoad() {
        self.view.backgroundColor = .orange
        
        self.testView = UIView(frame: self.view.bounds)
        self.testView?.backgroundColor = .yellow
        
        self.view.addSubview(self.testView!)
    }
    
    override func viewDidLayoutSubviews() {
        let height = self.view.bounds.size.height - 40
        let width = self.view.bounds.size.width - 40
        
        self.testView?.frame = CGRect(x: 20, y: 20, width: width, height: height)
    }
}
