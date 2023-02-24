import XCTest
@testable import WebViewLibrary

final class WebViewLibraryTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let mock = WebViewLibrary(link: "fb.com")
        XCTAssertNotNil(mock.link, "link not provided")
    }
}
