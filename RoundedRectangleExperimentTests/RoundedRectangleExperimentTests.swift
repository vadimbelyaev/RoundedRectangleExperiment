@testable import RoundedRectangleExperiment
import XCTest
import SnapshotTesting
import SwiftUI

class RoundedRectangleExperimentTests: XCTestCase {

    func testExample() throws {
        let view = ExampleView()
        let hc = UIHostingController(rootView: view)
        hc.view.frame = CGRect(x: 0, y: 0, width: 350, height: 1200)
        assertSnapshot(matching: hc, as: .image, record: true)
    }
}
