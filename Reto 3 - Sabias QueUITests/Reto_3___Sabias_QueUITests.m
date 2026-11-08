#import <XCTest/XCTest.h>

@interface Reto_3___Sabias_QueUITests : XCTestCase
@end

@implementation Reto_3___Sabias_QueUITests

- (void)setUp {
    [super setUp];
    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launch];
}

- (void)testEjemploCaptura {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // Tomar captura de pantalla de la app inicial
    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:app.screenshot];
    attachment.name = @"PantallaPrincipal";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
    
    // Simular toque en el primer botón de categoría si existe
    XCUIElement *btn = app.buttons[@"Categoría 1"];
    if (btn.exists) {
        [btn tap];
        
        // Tomar segunda captura tras el toque
        XCTAttachment *attachment2 = [XCTAttachment attachmentWithScreenshot:app.screenshot];
        attachment2.name = @"Categoria1_Seleccionada";
        attachment2.lifetime = XCTAttachmentLifetimeKeepAlways;
        [self addAttachment:attachment2];
    }
}

@end