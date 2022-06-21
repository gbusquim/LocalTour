//
//  OnwerObserver.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation
	
protocol OnwerObserverProtocol {
//    var id: Int {get set}
    func onUpdate(review: Review)
	    
    // TODO: Duvida: protocol ja deveria ter uma variavel que representa a lista de reviews que estao sendo observadas?
    // No update ele receberia apenas um Review e verificaria na lista ou recebe uma lista e compara com o estado anterior?
//    func onUpdate([Review])
    
}
