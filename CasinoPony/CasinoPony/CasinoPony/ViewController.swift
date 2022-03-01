//
//  ViewController.swift
//  CasinoPony
//
//  Created by Mac13 on 23/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carta1IV: UIImageView!
    @IBOutlet weak var carta2IV: UIImageView!
    
    
    var baraja = [ #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "18"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "10")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func jugarBTN(_ sender: UIButton) {
        let rand = Int(arc4random_uniform(8))
        let rand2 = Int(arc4random_uniform(8))
            carta1IV.image = baraja[rand]
            carta2IV.image = baraja[rand2]
        
        
        //cambio el orden

        //generar numeros aleatorios
        
        //validar si es ganador
        let alerta = UIAlertController(title: "Felicidades", message: "Ganaste!!!", preferredStyle: .alert)
        
        let accionOK = UIAlertAction(title: "Okay", style: .default, handler: nil)
        
        let accionApostar = UIAlertAction(title: "Apostar", style: .default) { _ in
            print("Apostando")
        }
        
        let accionJugarNuevo = UIAlertAction(title: "Volver a jugar", style: .cancel) { _ in
            print("Salir del juego")
            exit(0)
        }
        
        if((rand == 0 && rand2 == 1) || (rand == 0 && rand2 == 2) || (rand == 0 && rand2 == 4) || (rand == 1 && rand2 == 0) || (rand == 2 && rand2 == 0) || (rand == 4 && rand2 == 0) || (rand == 5 && rand2 == 1) || (rand == 5 && rand2 == 2) || (rand == 5 && rand2 == 4) || (rand == 1 && rand2 == 5) || (rand == 2 && rand2 == 5) || (rand == 4 && rand2 == 5) || (rand2 == 0 && rand == 1) || (rand2 == 0 && rand == 2) || (rand2 == 0 && rand == 4) || (rand2 == 1 && rand == 0) || (rand2 == 2 && rand == 0) || (rand2 == 4 && rand == 0)) || (rand2 == 5 && rand == 1) || (rand2 == 5 && rand == 2) || (rand2 == 5 && rand == 4) || (rand2 == 1 && rand == 5) || (rand2 == 2 && rand == 5) || (rand2 == 4 && rand == 5){
            present(alerta, animated: true, completion: nil)
        }
        alerta.addAction(accionOK)
        alerta.addAction(accionJugarNuevo)
        alerta.addAction(accionApostar)
        
    }
    
}
