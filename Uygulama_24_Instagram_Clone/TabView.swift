//
//  TabView.swift
//  Uygulama_24_Instagram_Clone
//
//  Created by zehra özer on 10.05.2024.
//

import SwiftUI

struct TabView: View {
    @State var index = 1
    @Environment (\.colorScheme) var scheme
    var renkler = [Color("renk1") , Color("renk2")]
    var body: some View {
        
        ZStack (alignment: .bottom) {
            
            if self.index == 1 {
               Home()
            }
            else if self.index == 2 {
                Search().navigationBarHidden(true)
            }
            else if self.index == 3 {
              Notifications().navigationBarHidden(true)
            }
            else {
               Profile().navigationBarHidden(true)

            }
            
            ZStack (alignment:.top) {
                HStack (spacing:0) {
                    //anasayfa
                    
                    Button(action:{
                        self.index = 1
                    }, label: {
                        Image("anasayfa")
                            .foregroundColor(self.index == 1 ? Color.primary : Color.primary.opacity(0.25))
                            .padding(.horizontal)
                    }).padding(.trailing , 30)
                    
                    Button(action:{
                        self.index = 2
                    }, label: {
                        Image("ara")
                            .foregroundColor(self.index == 2 ? Color.primary : Color.primary.opacity(0.25))
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    //beğendiklerin
                    Button(action:{
                        self.index = 3
                    }, label: {
                        Image(systemName: "suit.heart.fill")
                            .font(.system(size: 24))
                            .foregroundColor(self.index == 3 ? Color.primary : Color.primary.opacity(0.25))
                            .padding(.horizontal)
                            
                    }).padding(.trailing , 30)
                    
                    //profil
                    Button(action: {
                        self.index = 4
                    },label: {
                        Image("profil")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 25 , height: 25)
                            .clipShape(Circle())
                            .padding(.horizontal)
                    })
                }.padding(.horizontal)
                    .padding(.top)
                    .padding(.bottom , UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                    .background(self.scheme == .dark ? Color.black : Color.white)
                    .clipShape(CShape())
                    .shadow(color: Color.primary.opacity(0.88), radius: 10)
                
                //ekle butonu
                
                Button(action: { } , label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: renkler), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .clipShape(Circle())
                }).offset(y:-25)
                
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct CShape : Shape {
    func path(in rect : CGRect) -> Path {
        return Path { path in
            path.move(to:CGPoint(x: 0, y: 0))
            path.addLine(to:CGPoint(x:0 , y:rect.height))
            path.addLine(to:CGPoint(x:rect.width , y:rect.height))
            path.addLine(to:CGPoint(x:rect.width , y:0))

            path.addArc(center: CGPoint(x:rect.width / 2 , y:0), radius: 35, startAngle: .zero, endAngle: .init(degrees:180), clockwise: false)
        }
    }
}

#Preview {
    TabView()
}
