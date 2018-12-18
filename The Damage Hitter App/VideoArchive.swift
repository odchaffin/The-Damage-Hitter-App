//
//  VideoArchive.swift
//  The Damage Hitter App
//
//  Created by Owen D. Chaffin on 12/5/18.
//  Copyright © 2018 Owen Chaffin. All rights reserved.
//

import UIKit

class VideoArchive: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction func SelectVideo(_ sender: UITapGestureRecognizer) {
    
    let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated:true, completion:nil)
        func imagePickerControllerDidCancel(_picker:UIImagePickerController){
            dismiss(animated:true, completion: nil)
        }
        func imagePickerController(_picker:UIImagePickerController, didFinishPickingMediaWithInfo info : [UIImagePickerController.InfoKey: Any]){
            guard let selectedVideo = info[.originalImage] as? UIImage
                else{
                fatalError("Expected a image \(info)")
            }
            VideoUpload.image = selectedVideo
            dismiss(animated: true, completion: nil)
        }
        
    
    }
    @IBOutlet weak var VideoUpload: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
