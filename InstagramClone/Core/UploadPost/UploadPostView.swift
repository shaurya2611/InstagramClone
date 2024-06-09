//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 08/06/24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem?
    
    var body: some View {
        VStack(spacing:2){
            // header buttons: cancel and upload
            HStack{
                Button{
                    
                }label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Upload")
                }
            }.padding()
            
            // phtos and caption field
            HStack{
                Image("shaurya4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()
                
                TextField("Enter your caption", text: $caption)
            }.padding()
            
            Spacer()
            
        }
        .onAppear{
            imagePickerPresented.toggle()}
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
    }
}

#Preview {
    UploadPostView()
}
