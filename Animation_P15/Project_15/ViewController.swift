//
//  ViewController.swift
//  Project_15
//
//  Created by Alex Paramonov on 17.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var currrentAnumation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageView()
    }
    
    private func setImageView() {
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 13, options: [], animations: {
            
            switch  self.currrentAnumation {
                case 0:
                    self.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                case 1:
                    self.imageView.transform = .identity
                case 2:
                    self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
                case 3:
                    self.imageView.transform = .identity
                case 4:
                    self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                case 5:
                    self.imageView.transform = .identity
                case 6:
                    self.imageView.alpha = 0.1
                    self.imageView.backgroundColor = UIColor.green
                case 7:
                    self.imageView.alpha = 1
                    self.imageView.backgroundColor = UIColor.clear
                default:
                    break
            }
        }) { finished in
            sender.isHidden = false
        }
        
        currrentAnumation += 1
        
        if currrentAnumation > 7 {
            currrentAnumation = 0
        }
        
    }
    
}

