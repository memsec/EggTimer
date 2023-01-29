

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
//    var secondsRemaining = 60
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    @IBAction func hardnessSelected(_ sender: UIButton)  {
        
        progressBar.progress = 1.0
        
        timer.invalidate()
        let hardness = sender.currentTitle
        
        totalTime = eggTimes[hardness!]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime{
            let percentageProgress = secondsPassed / totalTime
            progressBar.progress = Float(percentageProgress)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
    
}

