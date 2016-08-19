//
//  reportAFire.swift
//  EL Map
//
//  Created by asc on 8/15/16.
//  Copyright © 2016 asc. All rights reserved.
//

import UIKit

class reportAFire: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var firePicker: UIPickerView!
    var fires = ["Select...", "Class A", "Class B", "Class C", "Class D", "Class K", "I Don't Know"]
    @IBOutlet weak var infoLabel: UITextView!
    @IBAction func fireSubBtn(sender: AnyObject) {
        var refreshAlert = UIAlertController(title: "EmLert", message: "NOTE: This fire report will be posted on the Alert Map. Others will be able to confirm or deny your claim. Proceed?", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Proceed", style: .Default, handler: { (action: UIAlertAction!) in
            self.dismissViewControllerAnimated(true, completion: nil)
            let alertController = UIAlertController(title: "EmLert", message:
                "The report has been successfully sent, and will now appear on the Alert Map.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        presentViewController(refreshAlert, animated: true, completion: nil)
    }
    
    var placementAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firePicker.delegate = self
        self.firePicker.dataSource = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fires.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fires[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        placementAnswer = row
        if (placementAnswer == 0) {
            infoLabel.text = "Select a type."
        }
        else if (placementAnswer == 1) {
            infoLabel.text = "Class A: The fire was started using ordinary combustibles, such as wood, paper, trash, cloth, and plastics."
        }
        else if (placementAnswer == 2) {
            infoLabel.text = "Class B: The fire was started using flammable liquids, such as gasoline, petroleum, oil, paint, or a flammable gas. Does not include cooking oils or grease."
        }
        else if (placementAnswer == 3) {
            infoLabel.text = "Class C: The fire was started using energized electrical equipment: motors, transformers, and appliances."
        }
        else if (placementAnswer == 4) {
            infoLabel.text = "Class D: The fire was started using combustible metals, such as potassium, sodium, magnesium, and aluminum."
        }
        else if (placementAnswer == 5) {
            infoLabel.text = "Class K: The fire was started using cooking oil or grease."
        }
        else{
            infoLabel.text = "I don't know."
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    }