//
//  AddItemTableViewController.swift
//  BucketList
//
//  Created by admin on 13/12/2021.
//

import UIKit

class AddItemViewController: UIViewController {

    weak var delegate: TableViewDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
        
    }
    
    @IBAction func savedButtonPressed(_ sender: UIBarButtonItem) {
       if let text = textField.text {
           delegate?.itemSaved(by: self, with: text, at: indexPath)
     }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = item

    }
   
}
