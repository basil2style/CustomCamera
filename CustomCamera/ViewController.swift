
import UIKit
import DKCamera
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       }
    
    @IBAction func capture(_ sender: Any) {
        let camera = DKCamera()
        camera.didCancel = { () in
            print("didCancel")
            
            self.dismiss(animated: true, completion: nil)
        }
        camera.didFinishCapturingImage = {(image: UIImage) in
            print("didFinishCapturingImage")
            
            self.dismiss(animated: true, completion: nil)
            
            self.imageView?.image = image
        }
        self.present(camera, animated: true, completion: nil)
    }
}

