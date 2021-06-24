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
    @IBOutlet weak var artistView: UILabel!
    @IBOutlet weak var albumView: UILabel!
    @IBOutlet weak var reviewView: UILabel!
    @IBOutlet weak var ratingView: UILabel!
    
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
        UserDefaults.standard.set(artist.text, forKey:
                                  "artist")
        UserDefaults.standard.set(album.text, forKey:
                                  "album")
        UserDefaults.standard.set(review.text, forKey:
                                  "review")
        UserDefaults.standard.set(rating.text, forKey:
                                  "rating")
        
        
    }
    
    @IBAction func showReview(_ sender: Any) {
        songNameView.text = UserDefaults.standard.object(forKey:
        "songName") as? String
        
        artistView.text = UserDefaults.standard.object(forKey: "artist") as? String
        
        albumView.text = UserDefaults.standard.object(forKey: "album") as? String
        reviewView.text = UserDefaults.standard.object(forKey: "review") as? String
        ratingView.text = UserDefaults.standard.object(forKey: "rating") as? String
        
        
    }
 
    
    

    
 //   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
 //       rating.resignFirstResponder()
//    }

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn( _ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
    }
}

