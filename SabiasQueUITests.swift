import XCTest

final class SabiasQueUITests: XCTestCase {

    override func setUpWithError() throws {
        // Detener la prueba si falla algún paso crítico
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }

    func testGenerarCapturasDePantalla() throws {
        let app = XCUIApplication()
        
        // 1. Capturar pantalla principal con las opciones de categorías
        let screenshotMain = app.screenshot()
        let attachmentMain = XCTAttachment(screenshot: screenshotMain)
        attachmentMain.name = "01_PantallaPrincipal"
        attachmentMain.lifetime = .keepAlways
        add(attachmentMain)
        
        // 2. Interactuar con la Categoría 1
        let botonCat1 = app.buttons["Categoría 1"]
        XCTAssertTrue(botonCat1.exists, "El botón de Categoría 1 debe existir en la interfaz")
        botonCat1.tap()
        
        // Capturar el primer dato curioso de la Categoría 1
        let screenshotCat1 = app.screenshot()
        let attachmentCat1 = XCTAttachment(screenshot: screenshotCat1)
        attachmentCat1.name = "02_Categoria1_Dato1"
        attachmentCat1.lifetime = .keepAlways
        add(attachmentCat1)
        
        // 3. Probar el botón "Otro dato" para verificar el cambio de información
        let botonOtroDato = app.buttons["Otro dato"]
        XCTAssertTrue(botonOtroDato.exists, "El botón 'Otro dato' debe estar visible")
        botonOtroDato.tap()
        
        // Capturar el segundo dato curioso
        let screenshotNext = app.screenshot()
        let attachmentNext = XCTAttachment(screenshot: screenshotNext)
        attachmentNext.name = "03_Categoria1_Dato2"
        attachmentNext.lifetime = .keepAlways
        add(attachmentNext)
    }
}