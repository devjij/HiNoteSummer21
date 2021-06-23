//
//  ViewController.swift
//  HiNoteSummer21
//
//  Created by Dev Jijilal on 6/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var songName: UITextField!
    @IBOutlet weak var artist: UITextField!
    @IBOutlet weak var album: UITextField!
    @IBOutlet weak var review: UITextField!
    @IBOutlet weak var rating: UITextField!
    @IBOutlet weak var songNameView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    songName.delegate = self
    //    artist.delegate = self
  //      album.delegate = self
  //      review.delegate = self
  //      rating.delegate = self
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func enterTapped(_ sender: Any) {
        
        UserDefaults.standard.set(songName.text, forKey:
                                  "songName")
    }
    
    @IBAction func showReview(_ sender: Any) {
        songNameView.text = UserDefaults.standard.object(forKey:
        "songName") as? String
    }
 
    
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        rating.resignFirstResponder()
    }

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn( _ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
    }
}

