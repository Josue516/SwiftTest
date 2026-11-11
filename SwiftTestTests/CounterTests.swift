import XCTest
@testable import SwiftTest

final class CounterTests: XCTestCase {

    func testInitialValueIsZero() {

        let counter = Counter()

        XCTAssertEqual(counter.value, 0)
    }

    func testIncrementIncreasesValue() {

        var counter = Counter()

        counter.increment()

        XCTAssertEqual(counter.value, 1)
    }

    func testResetReturnsToZero() {

        var counter = Counter()

        counter.increment()
        counter.increment()
        counter.reset()

        XCTAssertEqual(counter.value, 0)
    }
}