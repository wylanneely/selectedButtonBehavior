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
        
    }
    var lastButtonSelected: Int = 0
    var numberOfSelectedNotes: Int = 1

    var selectedButtonTags: [Int] = [0]
    
    func updateSelectedButtonTagsWith(buttonTag:Int) {
        selectedButtonTags.removeLast()
        selectedButtonTags.insert(buttonTag, at: 0)

    }
    
    
    
    func updateSelectedNotesTags(){
        let aButtonTag = 0
        let bButtonTag = 1
        let cButtonTag = 2
        switch numberOfSelectedNotes {
        case 1:
            let singleNoteArray = [aButtonTag]
            selectedButtonTags = singleNoteArray
        case 2:
            let twoNotesArray = [aButtonTag,bButtonTag]
            selectedButtonTags = twoNotesArray
        case 3:
            let threeNotesArray = [aButtonTag,bButtonTag,cButtonTag]
            selectedButtonTags = threeNotesArray
        default:
            return
        }
    }
    
    
    
    
    @IBAction func notesSegmentSelected(_ sender: UISegmentedControl) {
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0 : numberOfSelectedNotes = 1
            updateButtonStates()
            updateSelectedNotesTags()
        case 1: numberOfSelectedNotes = 2
            updateButtonStates()
            updateSelectedNotesTags()
        case 3: numberOfSelectedNotes = 3
            updateButtonStates()
            updateSelectedNotesTags()
        default: numberOfSelectedNotes = 1
            updateButtonStates()
            updateSelectedNotesTags()
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
            deselectLastButton()
            updateSelectedButtonTagsWith(buttonTag: 0)
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
        case 3:
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
        case 3:
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
        default:
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
        case 3:
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
        default:
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
        switch notesSegmentCOntrol.selectedSegmentIndex {
        case 0:
            numberOfSelectedNotes = 1
            aButton.isSelected = true
            bButton.isSelected = false
            cButton.isSelected = false
            dButton.isSelected = false
            eButton.isSelected = false
            fButton.isSelected = false
            lastButtonSelected = 0
            updateSelectedNotesTags()
        case 1:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = false
            dButton.isSelected = false
            eButton.isSelected = false
            fButton.isSelected = false
            lastButtonSelected = 0
            numberOfSelectedNotes = 2
            updateSelectedNotesTags()
        case 2:
            aButton.isSelected = true
            bButton.isSelected = true
            cButton.isSelected = true
            dButton.isSelected = false
            eButton.isSelected = false
            fButton.isSelected = false
            lastButtonSelected = 0
            numberOfSelectedNotes = 3
            updateSelectedNotesTags()
        default:
            lastButtonSelected = 0
            numberOfSelectedNotes = 3
            updateSelectedNotesTags()
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

