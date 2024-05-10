//
//  Post.swift
//  Uygulama_24_Instagram_Clone
//
//  Created by zehra özer on 10.05.2024.
//

import Foundation

struct Post :Identifiable {
    var id : Int
    var kullaniciAdi : String
    var profilGoruntu : String
    var postGonderi : String
    var postBaslik : String
    var zaman : String
    var begeniSayisi : String
    var begendin : Bool

}

var postVerileri = [

    Post(id: 0, kullaniciAdi: "oyunDiyari", profilGoruntu: "g1", postGonderi: "post1", postBaslik: "Yeni Resident Evil Villsge...", zaman: "24 dakika önce", begeniSayisi: "1532", begendin: true),
    
    Post(id: 1, kullaniciAdi: "iJustine", profilGoruntu: "goruntu", postGonderi: "post2", postBaslik: "İphone 11 vs İphone 12", zaman: "51 dakika önce", begeniSayisi: "9742", begendin: true),
    
    Post(id: 2, kullaniciAdi: "oyunDiyari", profilGoruntu: "g3", postGonderi: "post3", postBaslik: "Yeni Resident Evil Villsge...", zaman: "4 dakika önce", begeniSayisi: "1532", begendin: false),
    
    Post(id: 3, kullaniciAdi: "oyunDiyari", profilGoruntu: "g4", postGonderi: "post4", postBaslik: "Yeni Resident Evil Villsge...", zaman: "51 dakika önce", begeniSayisi: "8421", begendin: true),
    
    Post(id: 4, kullaniciAdi: "TeknoKayit", profilGoruntu: "g5", postGonderi: "post5", postBaslik: "Yeni Resident Evil Villsge...", zaman: "32 dakika önce", begeniSayisi: "1906", begendin: false)
]
