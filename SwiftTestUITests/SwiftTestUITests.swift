import XCTest

@MainActor
final class SwiftTestUITests: XCTestCase {

    func testCounterInteractionAndScreenshot() throws {
        let app = XCUIApplication()

        // Abrir la aplicación en el simulador.
        app.launch()

        // Comprobar el valor inicial.
        let counter = app.staticTexts["counterValue"]
        XCTAssertEqual(counter.label, "0")

        // Pulsar Incrementar dos veces.
        let incrementButton = app.buttons["incrementButton"]

        incrementButton.tap()
        incrementButton.tap()

        // Comprobar que el contador llegó a 2.
        XCTAssertEqual(counter.label, "2")

        // Tomar una captura real del simulador.
        let screenshot = XCTAttachment(
            image: app.screenshot().image
        )

        screenshot.name = "Contador en 2"
        screenshot.lifetime = .keepAlways

        add(screenshot)

        // Comprobar también el botón Reiniciar.
        app.buttons["resetButton"].tap()
        XCTAssertEqual(counter.label, "0")
    }
}