//
//  HomeView.swift
//  BlogPosts
//
//  Created by Raphael Cerqueira on 26/11/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "square.grid.2x2.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 26))
                        .frame(width: 40, height: 40)
                        .background(Color.gray.opacity(0.3))
                        .foregroundColor(.black)
                })
                .cornerRadius(8)
                
                Button(action: {}, label: {
                    Image(systemName: "square.grid.2x2.fil")
                        .frame(width: 40, height: 40)
                        .background(Color(#colorLiteral(red: 0.7997909188, green: 0.5589475036, blue: 0.09252240509, alpha: 1)))
                })
                .cornerRadius(8)
            }
            .padding(.top)
            .padding(.horizontal)
            
            Text("Posts for you")
                .font(.system(size: 38))
                .fontWeight(.bold)
                .padding(.top)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0 ..< 5) { item in
                        Image("p1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 350)
                            .cornerRadius(35)
                            .overlay(
                                VStack(alignment: .leading) {
                                    Spacer()
                                    
                                    TitleAndAuthorView()
                                }
                                .padding()
                                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottom, endPoint: .top).cornerRadius(35))
                            )
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top)
            
            HStack {
                Text("Popular")
                    .font(.system(size: 38))
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("See all")
                        .font(.system(size: 19))
                        .fontWeight(.bold)
                })
            }
            .padding(.top)
            .padding(.horizontal)
            
            PopularView()
                .padding(.horizontal)
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct PopularView: View {
    let items = [
        PopularItem(image: "", category: "DESIGN", title: "Design systems for seamless collaboration", author: "Davy Jones º 04 March 2019"),
        PopularItem(image: "", category: "PRACTICAL", title: "Workshop facilitation best practices", author: "Davy Jones * 24 April 2019"),
        PopularItem(image: "", category: "INSPIRATION", title: "The latest UI design trends of the web", author: "Davy Jones * 24 April 2019")
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(items) { item in
                    HStack(spacing: 0) {
                        Image(item.image)
                            .frame(width: 110, height: 110)
                            .background(Color.gray)
                            .cornerRadius(20)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(item.category)
                                .font(.system(size: 19))
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                            
                            Text(item.title)
                                .font(.system(size: 21))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text(item.author)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black.opacity(0.7))
                        }
                        .padding(.leading)
                    }
                }
            }
        }
    }
}

struct PopularItem: Identifiable {
    let id = UUID().uuidString
    var image: String
    var category: String
    var title: String
    var author: String
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
