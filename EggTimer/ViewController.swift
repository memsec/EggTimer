

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        print(sender.currentTitle as Any)
    }
    
}
