//
//  ScanExistingViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanExistingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var injuryDescInput: UITextField!
    @IBOutlet weak var padSelection: UITextField!
    
    var selectedPad: String?
    
    
    // code for pad type selction menu
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var padList = ["AC Joint", "Ankle", "Forearm", "Hip", "Shin", "Thumb", "Wrist"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return padList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return padList[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPad = padList[row]
        padSelection.text = selectedPad
    }
    
    func createPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        padSelection.inputView = pickerView
    }
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        
        let flexButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([flexButton, button], animated: true)
        toolBar.sizeToFit()
        toolBar.isUserInteractionEnabled = true
        padSelection.inputAccessoryView = toolBar
    }
    
    
    
    
    @objc func action() {
        view.endEditing(true)
    }
    
    
    
   
    @IBAction func beginScanButton(_ sender: Any) {
        let athleteName = nameInput.text
        
        if let found = all_athletes.first(where:{$0.name == athleteName }) {
            let athleteFound = found
            let athleteTeam = athleteFound.team
            let athletePosition = athleteFound.position
            let athleteNumber = athleteFound.number
            let currentPad = Pad(name: nameInput.text!, padType : selectedPad!, team: athleteTeam, injuryDesc: injuryDescInput.text!, number: athleteNumber, position: athletePosition)
            
            all_pads.append(currentPad)
            
            
        }
        // else add error message saying athlete does not exist in database

        
        
        
        
        
        performSegue(withIdentifier: "beginScanToInstruct", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
