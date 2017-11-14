//
//  ContainerViewController.swift
//  myWorkPOC
//
//  Created by Johannes Hubert on 03.11.17.
//  Copyright © 2017 Johannes Hubert. All rights reserved.
//

import Foundation
import UIKit

class ContainerViewController: SlideMenuController {
    
    public override func awakeFromNib() {
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "mainController") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "menuController") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }
    
}
