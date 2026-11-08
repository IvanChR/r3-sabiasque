//
//  ViewController.m
//  Reto 3 - Sabias Que
//
//  Created by Forte Apps on 19/07/20.
//  Copyright © 2020 UVEG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSDictionary *datosCuriosos;
    NSArray *currentCategoryFacts;
    int currentIndex;
    NSString *currentCategoryName;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Base de datos local de hechos curiosos por categoría
    datosCuriosos = @{
        @"Categoría 1": @[
            @{@"titulo": @"El origen del café", @"texto": @"El café fue descubierto en Etiopía cuando un pastor notó que sus cabras se volvían muy enérgicas tras comer ciertos frutos."},
            @{@"titulo": @"Las Pirámides de Giza", @"texto": @"No fueron construidas por esclavos, sino por trabajadores remunerados que recibían salario y raciones de comida."}
        ],
        @"Categoría 2": @[
            @{@"titulo": @"El cerebro humano", @"texto": @"Produce suficiente electricidad como para encender una bombilla pequeña de 20 vatios."},
            @{@"titulo": @"El agua y la Tierra", @"texto": @"Aunque el 71% de la superficie terrestre es agua, solo el 3% es dulce y apta para consumo."}
        ],
        @"Categoría 3": @[
            @{@"titulo": @"Un año en Venus", @"texto": @"Un día en Venus (su rotación sobre su eje) dura más que su propio año (su órbita alrededor del Sol)."},
            @{@"titulo": @"La memoria de los peces", @"texto": @"Los peces dorados tienen una memoria mucho más larga de lo que se cree, pudiendo recordar cosas durante meses."}
        ]
    };
    
    currentIndex = 0;
    currentCategoryName = @"Categoría 1";
    currentCategoryFacts = datosCuriosos[currentCategoryName];
    
    [self actualizarVista];
}

- (IBAction)selectCategory1:(id)sender {
    currentCategoryName = @"Categoría 1";
    currentCategoryFacts = datosCuriosos[currentCategoryName];
    currentIndex = 0;
    [self actualizarVista];
}

- (IBAction)selectCategory2:(id)sender {
    currentCategoryName = @"Categoría 2";
    currentCategoryFacts = datosCuriosos[currentCategoryName];
    currentIndex = 0;
    [self actualizarVista];
}

- (IBAction)selectCategory3:(id)sender {
    currentCategoryName = @"Categoría 3";
    currentCategoryFacts = datosCuriosos[currentCategoryName];
    currentIndex = 0;
    [self actualizarVista];
}

- (IBAction)nextFactTapped:(id)sender {
    if (currentCategoryFacts.count > 0) {
        // Incrementa el índice de forma cíclica para mostrar información diferente
        currentIndex = (currentIndex + 1) % (int)currentCategoryFacts.count;
        [self actualizarVista];
    }
}

- (void)actualizarVista {
    if (currentCategoryFacts.count > 0) {
        NSDictionary *dato = currentCategoryFacts[currentIndex];
        self.categoryTitleLabel.text = currentCategoryName;
        self.factTitleLabel.text = dato[@"titulo"];
        self.factTextView.text = dato[@"texto"];
    }
}

@end