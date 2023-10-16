//
//  AsynchImgeBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 20/07/23.
//

import SwiftUI


/*
 case empty -> No image is loaded.
 case success(Image) -> An image successfully loaded.
 case failure(Error) -> An image failed to load with an error.
 */

struct AsynchImgeBootCamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100,height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//         ProgressView()
//        })
//
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty :
                    ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140,height: 140)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
                
           default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
    }
}

struct AsynchImgeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AsynchImgeBootCamp()
    }
}
