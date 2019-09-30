//
//  ViewController.swift
//  NoteSelectionTry
//
//  Created by Wylan L Neely on 9/26/19.
//  Copyright © 2019 Wylan L Neely. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonStates()
        notesNumberStepper.wraps = true
        notesNumberStepper.maximumValue = 6
        notesNumberStepper.minimumValue = 2
        notesNumberStepper.isEnabled = false
    }
    
    var lastButtonSelected: Int = 0
    var numberOfSelectedNotes: Int = 1
    
    var selectedButtonTags: [Int] = [0]
    func updateSelectedButtonTagsWith(buttonTag:Int) {
        selectedButtonTags.removeLast()
        selectedButtonTags.insert(buttonTag, at: 0)
    }
    
    func updateSelectedButtonStateTags(){
        switch numberOfSelectedNotes {
        case 1:
            selectedButtonTags = [0]
        case 2:
            selectedButtonTags = [0,1]
        case 3:
            selectedButtonTags = [0,1,2]
        case 4:
            selectedButtonTags = [0,1,2,3]
        case 5:
            selectedButtonTags = [0,1,2,3,4]
        case 6:
            selectedButtonTags = [0,1,2,3,4,5]
        default:
            selectedButtonTags = [0,1,2]
            return
        }
    }
    
    
    
    @IBAction func AbuttonClicked(_ sender: Any) {
        
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0:
            if aButton.isSelected {
                aButton.isSelected = true
                bButton.isSelected = false
                cButton.isSelected = false
                dButton.isSelected = false
                eButton.isSelected = false
                fButton.isSelected = false
                lastButtonSelected = 0
                return
            } else {
                aButton.isSelected = true
                bButton.isSelected = false
                cButton.isSelected = false
                dButton.isSelected = false
                eButton.isSelected = false
                fButton.isSelected = false
                lastButtonSelected = 0
                return
            }
        case 1:
            if aButton.isSelected {
                aButton.isSelected = true
                lastButtonSelected = 0
                return
                     }
            else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 0)
                aButton.isSelected = true
                lastButtonSelected = 0
                return
            }
            
            
        case 2:
            if aButton.isSelected {
                aButton.isSelected = true
                lastButtonSelected = 0
                         return
                     }
            else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 0)
                aButton.isSelected = true
                lastButtonSelected = 0
                return
            }
        default:
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
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 1)
                bButton.isSelected = true
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
                updateSelectedButtonTagsWith(buttonTag: 1)
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
                updateSelectedButtonTagsWith(buttonTag: 1)
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
                updateSelectedButtonTagsWith(buttonTag: 2)
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
                updateSelectedButtonTagsWith(buttonTag: 2)
                cButton.isSelected = true
                lastButtonSelected = 2
                return
            }
        case 3...6:
            if cButton.isSelected == true {
                lastButtonSelected = 2
                cButton.isSelected = true
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 2)
                cButton.isSelected = true
                lastButtonSelected = 2
                return
            }
        default:
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
                dButton.isSelected = true
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 3)
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
                updateSelectedButtonTagsWith(buttonTag: 3)
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
                updateSelectedButtonTagsWith(buttonTag: 3)
                dButton.isSelected = true
                lastButtonSelected = 3
                return
            }
        default:
                return
        }
    }
    
    @IBAction func eButtonClicked(_ sender: Any) {
        switch numberOfSelectedNotes {
        case 1:
            if eButton.isSelected == true {
                eButton.isSelected = true
                lastButtonSelected = 4
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 4)
                eButton.isSelected = true
                lastButtonSelected = 4
                return
            }
        case 2:
            if eButton.isSelected == true {
                eButton.isSelected = true
                lastButtonSelected = 4
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 4)
                eButton.isSelected = true
                lastButtonSelected = 4
                return
            }
        case 3...6:
            if eButton.isSelected == true {
                eButton.isSelected = true
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 4)
                eButton.isSelected = true
                return
            }
        default:
            return
        }
    }
    
    @IBAction func fButtonClicked(_ sender: Any) {
        switch numberOfSelectedNotes {
        case 1:
            if fButton.isSelected == true {
                fButton.isSelected = true
                lastButtonSelected = 5
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 5)
                fButton.isSelected = true
                lastButtonSelected = 5
                return
            }
        case 2:
            if fButton.isSelected == true {
                fButton.isSelected = true
                lastButtonSelected = 5
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 5)
                fButton.isSelected = true
                lastButtonSelected = 5
                return
            }
        case 3...6:
            if fButton.isSelected == true {
                fButton.isSelected = true
                lastButtonSelected = 5
                return
            } else {
                deselectLastButton()
                updateSelectedButtonTagsWith(buttonTag: 5)
                fButton.isSelected = true
                lastButtonSelected = 5
                return
            }
        default: return
        }
        
        
    }
    
    
    func deselectLastButton(){
        guard let lastButtonToSelect = selectedButtonTags.last else {return}
        
        switch lastButtonToSelect {
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
        switch numberOfSelectedNotes {
        case 1:
            aButton.isSelected = true
            bButton.isSelected = false
            cButton.isSelected = false
            dButton.isSelected = false
            eButton.isSelected = false
            fButton.isSelected = false
            updateSelectedButtonStateTags()
        case 2:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = false
            dButton.isSelected = false
            eButton.isSelected = false
            fButton.isSelected = false
            updateSelectedButtonStateTags()
        case 3:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
            dButton.isSelected = false
            eButton.isSelected = false
            fButton.isSelected = false
            updateSelectedButtonStateTags()
        case 4:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
            dButton.isSelected = true
            eButton.isSelected = false
            fButton.isSelected = false
            updateSelectedButtonStateTags()
        case 5:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
            dButton.isSelected = true
            eButton.isSelected = true
            fButton.isSelected = false
            updateSelectedButtonStateTags()
        case 6:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
            dButton.isSelected = true
            eButton.isSelected = true
            fButton.isSelected = true
            updateSelectedButtonStateTags()
        default:
            return
        }
    }
    
    func setUpButtonStates() {
        switch numberOfSelectedNotes {
        case 1: aButton.isSelected = true
        case  2:
            aButton.isSelected = true
            bButton.isSelected = true
        case 3:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
        default:
            return
        }
        
    }
    @IBAction func numberOfNotesChanged(_ sender: UIStepper) {

            let newNotesValue = Int(sender.value)
            numberOfNotesLabel.text = "\(newNotesValue)"
            numberOfSelectedNotes = newNotesValue
            updateButtonStates()
        
  
    }
   
    @IBAction func notesSegmentSelected(_ sender: UISegmentedControl) {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0 :
            notesNumberStepper.isEnabled = false
            self.numberOfSelectedNotes = 1
            numberOfNotesLabel.text = "1"
            updateButtonStates()
            updateSelectedButtonStateTags()
        case 1:
            notesNumberStepper.isEnabled = false
            self.numberOfSelectedNotes = 3
            numberOfNotesLabel.text = "3"
            updateButtonStates()
            updateSelectedButtonStateTags()
        case 2:
            notesNumberStepper.isEnabled = true
            notesNumberStepper.value = 4
            self.numberOfSelectedNotes = 4
            numberOfNotesLabel.text = "4"
            updateButtonStates()
            updateSelectedButtonStateTags()
        default:
            return
        }
    }
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var numberOfNotesLabel: UILabel!
    @IBOutlet weak var notesNumberStepper: UIStepper!
    

    
    
    @IBOutlet weak var notesSegmentCOntrol: UISegmentedControl!
    
}

