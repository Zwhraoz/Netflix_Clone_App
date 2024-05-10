//
//  PostView.swift
//  Uygulama_24_Instagram_Clone
//
//  Created by zehra özer on 10.05.2024.
//

import SwiftUI

struct postView: View {
    var postVerisi : Post
    @State var yorum = ""
    var body: some View {
       
        VStack (alignment:.leading) {
            
            HStack (spacing:12) {
                Image(self.postVerisi.profilGoruntu)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30 , height: 30)
                    .clipShape(Circle())
                
                VStack (alignment:.leading , spacing:6) {
                    Text(self.postVerisi.kullaniciAdi)
                    Text(self.postVerisi.zaman).font(.caption).foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image("menu")
                        .resizable()
                        .frame(width: 22 , height: 22)
                        .foregroundColor(.gray)
                })
            }
            Image(self.postVerisi.postGonderi)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30 , height: 280)
                .cornerRadius(20)
                .padding(.vertical , 10)
            
            HStack (spacing:20) {
                Button (action: {}, label: {
                    Image(systemName: "suit.heart.fill")
                        .font(.system(size: 24))
                        .foregroundColor(self.postVerisi.begendin ? .red : .gray)
                    
                    Button(action: {}, label: {
                        Image("gonder")
                            .resizable()
                            .frame(width: 18 , height: 22)
                            .foregroundColor(.gray)
                    })
                })
            }
            Text(self.postVerisi.begeniSayisi + "Beğeni")
            Text(self.postVerisi.postBaslik).padding(.top , 5)
            
            Button(action: {}, label: {
                Text("Tüm yorumları (452) görüntüle")
            })
            .foregroundColor(.gray)
            .padding(.vertical , 10)
            
            HStack (spacing:15) {
                TextField("yorum ekle" , text: self.$yorum)
                    .font(.system(size: 12))
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                })
            }.padding(.horizontal)
                .padding(.vertical , 10)
                .background(Capsule().stroke(Color.gray , lineWidth: 1))
        }.padding(.horizontal)
            .padding(.top)
    }
}




