import XCTest
import Levenshtein

class LevenshteinTests: XCTestCase {
    func testLevenshteinDistance() {
        XCTAssertEqual(levenshteinDistance("ab", "ab"), 0)
        XCTAssertEqual(levenshteinDistance("abc", "ab"), 1)
    }

    static var allTests = [
        ("testLevenshteinDistance", testLevenshteinDistance),
    ]
}
