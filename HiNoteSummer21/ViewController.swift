//
//  ViewController.swift
//  HiNoteSummer21
//
//  Created by Dev Jijilal on 6/20/21.
//

import UIKit





class ViewController: UIViewController {

  
    @interface UILabel : UIView

    @IBOutlet weak var album: UITextField!
    @IBOutlet weak var review: UITextField!
    @IBOutlet weak var rating: UITextField!
    @IBOutlet weak var songNameView: UILabel!
    @IBOutlet weak var artistView: UILabel!
    @IBOutlet weak var albumView: UILabel!
    @IBOutlet weak var reviewView: UILabel!
    @IBOutlet weak var ratingView: UILabel!
    @IBOutlet weak var songName: UITextField!
    @IBOutlet weak var artist: UITextField!


    
    @IBOutlet weak var
    
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            songName.delegate = self
            artist.delegate = self
            album.delegate = self
            review.delegate = self
            rating.delegate = self
            
            
            //delegate setup
            
            // Do any additional setup after loading the view.
        }
    
    
    
    var reviewnum = 1
    
    @IBAction func didChangeSegment(  sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            reviewnum = 1
        }
        if sender.selectedSegmentIndex == 1 {
            reviewnum = 2
        }
        if sender.selectedSegmentIndex == 2 {
            reviewnum = 3
        }
        if sender.selectedSegmentIndex == 3 {
            reviewnum = 4
        }
        if sender.selectedSegmentIndex == 4 {
            reviewnum = 5
        }
        if sender.selectedSegmentIndex == 5 {
            reviewnum = 6
        }
        if sender.selectedSegmentIndex == 6 {
            reviewnum = 7
        }
        if sender.selectedSegmentIndex == 7 {
            reviewnum = 8
        }
        if sender.selectedSegmentIndex == 8 {
            reviewnum = 9
        }
        if sender.selectedSegmentIndex == 9 {
            reviewnum = 10
        }
        
    }
    
    
    
    @IBAction func enterTapped(_ sender: Any) {
        
        UserDefaults.standard.set(songName.text, forKey:
                                  "a" + String(reviewnum))
        UserDefaults.standard.set(artist.text, forKey:
                                    "b" + String(reviewnum))
        UserDefaults.standard.set(album.text, forKey:
                                    "c" + String(reviewnum))
        UserDefaults.standard.set(review.text, forKey:
                                    "d" + String(reviewnum))
        UserDefaults.standard.set(rating.text, forKey:
                                    "e" + String(reviewnum))
        
        
    }
    
    
        var reviewdisplay = 1
    
    @IBAction func didChangeSegment2( sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            reviewdisplay = 1
        }
        if sender.selectedSegmentIndex == 1 {
            reviewdisplay = 2
        }
        if sender.selectedSegmentIndex == 2 {
            reviewdisplay = 3
        }
        if sender.selectedSegmentIndex == 3 {
            reviewdisplay = 4
        }
        if sender.selectedSegmentIndex == 4 {
            reviewdisplay = 5
        }
        if sender.selectedSegmentIndex == 5 {
            reviewdisplay = 6
        }
        if sender.selectedSegmentIndex == 6 {
            reviewdisplay = 7
        }
        if sender.selectedSegmentIndex == 7 {
            reviewdisplay = 8
        }
        if sender.selectedSegmentIndex == 8 {
            reviewdisplay = 9
        }
        if sender.selectedSegmentIndex == 9 {
            reviewdisplay = 10
        }
        
    }
    
    @IBAction func showReview(_ sender: Any) {
        songNameView.text = UserDefaults.standard.object(forKey: "a" + String(reviewdisplay)) as? String
        
        artistView.text = UserDefaults.standard.object(forKey: "b" + String(reviewdisplay)) as? String
        
        albumView.text = UserDefaults.standard.object(forKey: "c" + String(reviewdisplay)) as? String
        reviewView.text = UserDefaults.standard.object(forKey: "d" + String(reviewdisplay)) as? String
        ratingView.text = UserDefaults.standard.object(forKey: "e" + String(reviewdisplay)) as? String
        }
    }
extension ViewController: UITextFieldDelegate
        {
    func textFieldShouldReturn( _ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
        }
    }

