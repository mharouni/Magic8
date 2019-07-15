//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mohamed Harouni on 3/23/19.
//  Copyright © 2019 Mohamed Harouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var balls : [String] = ["ball1" , "ball2", "ball3", "ball4", "ball5"]
	@IBOutlet weak var ballImage: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	//	ballImage.image = UIImage(named: "ball")
	}

	@IBAction func askBottonpressed(_ sender: Any) {
		randomBall()
	}
	func randomBall(){
		let ballIndex: Int = Int.random(in: 0 ... 4)
		ballImage.image = UIImage(named: balls[ballIndex])
	}
	override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
		randomBall()
	}
	
}

