//
//  ViewController.swift
//  NoteSelectionTry
//
//  Created by Wylan L Neely on 9/26/19.
//  Copyright © 2019 Wylan L Neely. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lastButtonSelected: Int = 0
    var numberOfSelectedNotes: Int = 1

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonStates()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func notesSegmentSelected(_ sender: UISegmentedControl) {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0 : numberOfSelectedNotes = 1
        case 1: numberOfSelectedNotes = 2
        case 3: numberOfSelectedNotes = 3
        default: numberOfSelectedNotes = 1
        }
        updateButtonStates()

    }
    @IBAction func AbuttonClicked(_ sender: Any) {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0:
            if aButton.isSelected {
                aButton.isSelected = true
                bButton.isSelected = false
                cButton.isSelected = false
                dButton.isSelected = false
                lastButtonSelected = 0
                return
            } else {
                aButton.isSelected = true
                bButton.isSelected = false
                cButton.isSelected = false
                dButton.isSelected = false
                lastButtonSelected = 0
                return
            }
        case 1:
            if aButton.isSelected {
                lastButtonSelected = 0
                return
                     }
            else {
                deselectLastButton()
                aButton.isSelected = true
                lastButtonSelected = 0
                return
            }
            
            
        case 2:
            if aButton.isSelected {
                lastButtonSelected = 0
                         return
                     }
            else {
                deselectLastButton()
                aButton.isSelected = true
                lastButtonSelected = 0
                return
            }
        default:
            deselectLastButton()
            aButton.isSelected = true
            lastButtonSelected = 0
            return
        }
    }
    
    @IBAction func BButtonCLicked(_ sender: Any) {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0:
            if bButton.isSelected {
                bButton.isSelected = true
                lastButtonSelected = 1
                return
            } else {
                aButton.isSelected = false
                bButton.isSelected = true
                cButton.isSelected = false
                dButton.isSelected = false
                lastButtonSelected = 1
                return
            }
        case 1:
            if bButton.isSelected {
                lastButtonSelected = 1
                bButton.isSelected = true
                return
            } else {
                deselectLastButton()
                bButton.isSelected = true
                lastButtonSelected = 1
                return
            }
            
        case 2:
            if bButton.isSelected {
                lastButtonSelected = 1
                bButton.isSelected = true
                return
            } else {
                deselectLastButton()
                bButton.isSelected = true
                lastButtonSelected = 1
                return
            }
            
        default:
            return
        }
        
        
    }
    
    @IBAction func cButtonCLicked(_ sender: Any) {
        switch  numberOfSelectedNotes  {
        case 1:
            if cButton.isSelected == true {
                cButton.isSelected = true
                lastButtonSelected = 2
                return
            } else {
                deselectLastButton()
                cButton.isSelected = true
                lastButtonSelected = 2
                return
            }
            
        case 2:
            if cButton.isSelected == true {
                lastButtonSelected = 2
                cButton.isSelected = true
                return
            } else {
                deselectLastButton()
                cButton.isSelected = true
                lastButtonSelected = 2
                return
            }
        case 3:
            if cButton.isSelected == true {
                lastButtonSelected = 2
                cButton.isSelected = true
                return
            } else {
                deselectLastButton()
                cButton.isSelected = true
                lastButtonSelected = 2
                return
            }
        default:
            cButton.isSelected = true
            lastButtonSelected = 2
            return
        }
        
        
        
    }
    @IBAction func dButtonCLicked(_ sender: Any) {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0:
            if dButton.isSelected == true {
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            } else {
                aButton.isSelected = false
                bButton.isSelected = false
                cButton.isSelected = false
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            }
        case 1:
            if dButton.isSelected == true {
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            } else {
                deselectLastButton()
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            }
            
        case 2:
            if dButton.isSelected == true {
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            } else {
                deselectLastButton()
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            }
        default:
            if dButton.isSelected == true {
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            } else {
                deselectLastButton()
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            }
        }
    }
    
    @IBAction func eButtonClicked(_ sender: Any) {
        
        
    }
    @IBAction func fButtonClicked(_ sender: Any) {
        
        
    }
    
    
    func deselectLastButton(){
        switch lastButtonSelected {
        case 0:
            aButton.isSelected = false
        case 1:
            bButton.isSelected = false
        case 2:
            cButton.isSelected = false
        case 3:
            dButton.isSelected = false
        case 4:
            eButton.isSelected = false
        case 5:
            fButton.isSelected = false

            
        default:
            return
        }
    }
    
    
    func updateButtonStates(){
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0:
            aButton.isSelected = true
            bButton.isSelected = false
            cButton.isSelected = false
            dButton.isSelected = false
            lastButtonSelected = 0
            numberOfSelectedNotes = 1
        case 1:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = false
            dButton.isSelected = false
            lastButtonSelected = 0
            numberOfSelectedNotes = 2
        case 2:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
            dButton.isSelected = false
            lastButtonSelected = 0
            numberOfSelectedNotes = 3
        default:
            lastButtonSelected = 0
            numberOfSelectedNotes = 3
            return
        }
    }
    
    func setUpButtonStates() {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0: aButton.isSelected = true
        case  1:
            aButton.isSelected = true
            bButton.isSelected = true
        case 2:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
        default:
            aButton.isSelected = true
        }
        
    }

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    

    
    
    @IBOutlet weak var notesSegmentCOntrol: UISegmentedControl!
    
}

