import XCTest
@testable import LanguageAndLocaleCodes

final class LanguageAndLocaleCodesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LanguageAndLocaleCodes().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
