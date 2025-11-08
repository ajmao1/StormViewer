//
//  DetailViewController.swift
//  Project2
//
//  Created by AJ Mao on 11/7/25.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    
    var selectedPictureNumber = 0
    
    var pictureCount = 0
    
    var selectedImage: String?
    

    
    override func viewDidLoad() {
        
        title = "\(selectedPictureNumber) of \(pictureCount)"
        
        navigationItem.largeTitleDisplayMode = .never
        
        super.viewDidLoad()
        if let imageToLoad = selectedImage{
            ImageView.image = UIImage(named: imageToLoad)}
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
