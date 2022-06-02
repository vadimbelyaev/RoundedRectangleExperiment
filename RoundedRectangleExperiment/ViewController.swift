import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBAction func buttonTapped(_ sender: Any) {
        let controller = UIHostingController(rootView: ExampleView())
        present(controller, animated: true)
    }
}

