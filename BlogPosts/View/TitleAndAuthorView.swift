//
//  TitleAndAuthorView.swift
//  BlogPosts
//
//  Created by Raphael Cerqueira on 26/11/20.
//

import SwiftUI

struct TitleAndAuthorView: View {
    var showSaveButton = false
    @State var isSaved = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("The principles of\nDesign Thinking")
                .font(.system(size: 32))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            HStack(spacing: 0) {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .background(Color.gray)
                    .cornerRadius(15)
                
                VStack(alignment: .leading) {
                    Text("Annie Montgomery")
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                    
                    Text("4 days ago")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                
                Spacer()
                
                if showSaveButton {
                    Button(action: {
                        isSaved.toggle()
                    }, label: {
                        Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    })
                }
            }
        }
    }
}

struct TitleAndAuthorView_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndAuthorView(showSaveButton: true)
            .background(Color.black)
    }
}
