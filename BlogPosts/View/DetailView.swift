//
//  DetailView.swift
//  BlogPosts
//
//  Created by Raphael Cerqueira on 26/11/20.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var present
    
    var body: some View {
        VStack {
            Image("p1")
                .resizable()
                .scaledToFill()
                .overlay(
                    VStack(alignment: .leading) {
                        Button(action: {
                            present.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.black)
                            
                        })
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        
                        Spacer()
                        
                        TitleAndAuthorView(showSaveButton: true)
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottom, endPoint: .top).cornerRadius(35))
                )
                .cornerRadius(35)
            
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    Text("Design Thinking is an iterative process in which we seek to understand the user, challenge assumptions, and redefine problems in an attempt to identify alternative strategies and solutions that might not be instantly apparent with our initial level of understanding.\n\nAt the same time, Design Thinking provides a solution-based approach to solving problems. It is a way of thinking and working as well as a collection of hands-on methods.\n\nDesign Thinking revolves around a deep interest in developing an understanding of the people for whom we’re designing the products or services. It helps us observe and develop empathy with the target user. Design Thinking helps us in the process of questioning: questioning the problem, questioning the assumptions, and questioning the implications. \n\nDesign Thinking is extremely useful in tackling problems that are ill-defined or unknown, by re-framing the problem in human-centric ways, creating many ideas in brainstorming sessions, and adopting a hands-on approach in prototyping and testing. Design Thinking also involves ongoing experimentation: sketching, prototyping, testing, and trying out concepts and ideas.")
                        .font(.system(size: 21, weight: .regular))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                }
                .mask(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .top, endPoint: .bottom))
                
            }
            .ignoresSafeArea(.all, edges: [.top, .bottom])
            
            Spacer()
        }
        .background(Color.black)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .ignoresSafeArea(.all, edges: [.top, .bottom])
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
