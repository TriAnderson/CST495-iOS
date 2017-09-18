import UIKit

class PallindromeViewController: UIViewController{
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        print("PallindromeViewController loaded its view.")

    }
    
    
    @IBOutlet var isLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    
    func isPalindrome(_ word: String) -> Bool {
        let word = word.lowercased().characters.filter{ $0 != " " }
        for (i, character) in word.enumerated() {
            if character != word[word.count-i-1] {
                isLabel.text = "Is Not"
                return false
            }
        }
        isLabel.text = "Is"
        return true
    }
    
    @IBAction func pallindromeFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            isPalindrome(text)
        } else{
            isLabel.text = "Is not"
        }
    }
    
}
