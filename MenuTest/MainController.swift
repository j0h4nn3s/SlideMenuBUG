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
    
    @IBAction func menuAction(_ sender: Any) {
        self.slideMenuController()?.openLeft()
    }
}
