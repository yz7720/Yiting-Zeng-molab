//
//  ContentView.swift
//  Shared
//
//  Created by yiting zeng on 1/3/22.
//

import SwiftUI
import AVFoundation

struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label.foregroundColor(.black)
            Spacer()
        }
        .padding()
        .frame(width: 120, height: 50, alignment: .center)
        .background (LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(200)
        .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("pet").ignoresSafeArea()
                VStack() {
                    HStack(){
                        TextField("Username", text: $username)
                            .padding()
                            .frame(width: 180, height: 50)
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.top,20)
                        }
                    HStack(){
                        SecureField("Password", text: $password)
                            .padding()
                            .frame(width: 180, height: 50)
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.top,20)
                    }
                    HStack(){
                    NavigationLink(destination: page2()) {
                        Text("Sign In")
                        .foregroundColor(.orange)
                        .font((.headline))
                        .bold()
                    }
                    .buttonStyle(WhiteButton())
                    }
                    HStack(){
                            NavigationLink(destination: page2()) {
                                Text("Sign Up")
                                    .foregroundColor(.orange)
                                    .font((.headline))
                                    .bold()
                            }
                            .buttonStyle(WhiteButton())
                    }
                    }
                }
                
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}


