//
//  DetailViewController.swift
//  Easy Notes
//
//  Created by Oceanize on 3/6/18.
//  Copyright © 2018 webhawksit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var text:String = ""
    var masterVew:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = text
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textView.becomeFirstResponder()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterVew.newRowText = textView.text
        textView.resignFirstResponder()
    }
    
    func setText(t:String) {
        text = t
        if isViewLoaded {
            textView.text = t
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
