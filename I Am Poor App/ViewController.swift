//
//  ViewController.swift
//  I Am Poor App
//
//  Created by Александр Заречкин on 05.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var button_tyk: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        button_tyk.addTarget(self, action: #selector(toggleDarkMode), for: .touchUpInside)
    }
    

    @objc func toggleDarkMode() {
        if #available(iOS 12.0, *) {
            if self.traitCollection.userInterfaceStyle == .light {
                
                lbl.text = "Barbie"
                
                UIApplication.shared.windows.forEach { window in
                    window.overrideUserInterfaceStyle = .dark
                }
            } else {
       
                lbl.text = "Drive"
           
                UIApplication.shared.windows.forEach { window in
                    window.overrideUserInterfaceStyle = .light
                }
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if #available(iOS 12.0, *) {
            if self.traitCollection.userInterfaceStyle == .light {
          
                lbl.text = "Barbie"
            } else {
               
                lbl.text = "Drive"
            }
        }
    }
}
