import UIKit

class ViewController: UIViewController {
   
   let brain = StoryBrain();
   
   @IBOutlet weak var firstButton: UIButton!
   @IBOutlet weak var secondButton: UIButton!
   
   @IBOutlet weak var question: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      updateUI()
   }
   
   @IBAction func buttonClicked(_ sender: UIButton) {
      brain.setDestination(sender.currentTitle!)
      Timer.scheduledTimer(timeInterval: 0, target: self, selector: #selector(updateUI) , userInfo: nil, repeats: false)
   }
   
   @objc func updateUI(){
      question.text = brain.getTitle();
      firstButton.setTitle(brain.getFirstChoice(), for: .normal)
      secondButton.setTitle(brain.getSecondChoice(), for: .normal)
   }
   
}

