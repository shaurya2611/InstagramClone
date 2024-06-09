//
//  UploadPostViewModel.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 09/06/24.
//

import Foundation
import SwiftUI
import PhotosUI

@MainActor
class UploadPostViewModel: ObservableObject{
    
    @Published var selectedImage: PhotosPickerItem?{
        didSet{
            Task { await loadImage(formItem: selectedImage)}
        }
    }
    
    func loadImage(formItem item: PhotosPickerItem?) async{
        
    }
    
}
