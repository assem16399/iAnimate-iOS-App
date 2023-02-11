//
//  ViewController.swift
//  iAnimate
//
//  Created by Aasem Hany on 06/02/2023.
//

import UIKit

class ViewController: UIViewController {

    var image: UIImageView!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let img = #imageLiteral(resourceName: "penguin")
        image = UIImageView(image: img)
        image.center = CGPoint(x: view.frame.maxX/2, y: view.frame.maxY/2)
        view.addSubview(image)
    }

    @IBAction func onAnimatePressed(_ sender: UIButton) {
        
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0,usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [], animations: {
            switch self.counter {
            case 0:
                self.image.transform = CGAffineTransform(scaleX: 2, y: 2)
                break
            case 1:
                self.image.transform = .identity
                break
            case 2:
                self.image.transform = CGAffineTransform(translationX: -256.0, y: -256.0)
                break
            case 3:
                self.image.transform = .identity
                break
            case 4:
                self.image.transform = CGAffineTransform(rotationAngle:.pi)
                break
            case 5:
                self.image.transform = .identity
                break
            case 6:
                self.image.alpha = 0.1
                self.image.backgroundColor = .green
                break
            case 7:
                self.image.alpha = 1
                self.image.backgroundColor = .clear
                break
            default:
                break
            }
        },completion: {(isFinished)in
            sender.isHidden = false
        })
        counter += 1
        
        if counter > 7 {
            counter = 0;
        }
    }
    
}

