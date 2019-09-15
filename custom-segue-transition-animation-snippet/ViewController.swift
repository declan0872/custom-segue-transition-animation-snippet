//
//  ViewController.swift
//  custom-segue-transition-animation-snippet
//
//  Created by Declan on 16/08/2019.
//  Copyright © 2019 Declan Conway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func prepareForUnwind (segue: UIStoryboardSegue) {
        
    }
    
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        let segue = UnwindScaleSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }


}

