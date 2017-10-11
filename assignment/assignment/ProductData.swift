//
//  ProductData.swift
//  assignment
//
//  Created by SWUCOMPUTER on 2017. 10. 8..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import Foundation

let productData:ProductData=ProductData()

class ProductData{
    var branches:[Branch]=[]
    
    init() {
        let one=product(name:"클라이마웜 ALL W(검)",num:"CG2734", count:10, img:"https://crazy11.co.kr/shopimages/winv007/079002000151.jpg?1506501745")
        let two=product(name:"클라이마웜 ALL W(흰)",num:"CG2736", count:14, img:"http://image.auction.co.kr/itemimage/12/c2/08/12c20833e5.jpg")
        let thr=product(name:"스탠 스미스 컴포트",num:"S75187", count:29, img:"http://cdn.mustit.co.kr/lib/upload/product/minggoos7777/2015/06/thum_500/1435636464-14_thumb.jpg")
        let fou=product(name:"코스믹 1.1",num:"BB3347", count:16, img:"http://www.shoesmall.ne.kr/shopimages/hee8720/mobile/5/2150305_represent?09261742")
        
        let fiv=product(name: "애슬레틱 트랙탑", num: "CI3283", count: 5, img: "http://image.auction.co.kr/itemimage/11/42/31/11423179f3.jpg")
        let six=product(name: "유로파 트랙탑", num: "BK5936", count: 7, img: "http://image.adidas.co.kr/upload/prod/basic/source/BK2325-1.jpg")
        let sev=product(name: "ZNE 펄스 커버업", num: "BS4908", count: 2, img: "http://image.adidas.co.kr/upload/prod/basic/320/BS4890-1_320X320.jpg")
    
      
        
        let shoes_m=Category(name: "신발")
        let outer_m=Category(name: "아우터")
        let top_m=Category(name: "상의")
        let bottom_m=Category(name: "하의")
        
        let shoes_s=Category(name: "신발")
        let outer_s=Category(name: "아우터")
        let top_s=Category(name: "상의")
        let bottom_s=Category(name: "하의")
    
        let shoes_=Category(name: "신발")
        let outer_=Category(name: "아우터")
        let top_=Category(name: "상의")
        let bottom_=Category(name: "하의")
        
        shoes_m.items=[one,two,thr,fou]
        outer_m.items=[fiv,six,sev]
        
        let myeonmok=Branch(name: "면목점")
        let sagajung=Branch(name: "사가정점")
        let sangbong=Branch(name: "상봉점")
        
        sangbong.categories=[shoes_s,outer_s,top_s,bottom_s]
        sagajung.categories=[shoes_,outer_,top_,bottom_]
        myeonmok.categories=[shoes_m,outer_m,top_m,bottom_m]
        
        branches+=[myeonmok,sagajung,sangbong]
        
    }
}


class Branch{
    let name:String
    var categories:[Category]?
    
    init(name:String) {
        self.name=name
    }
}

class Category{
    let name:String
    var items:[product]?
    
    init(name:String) {
        self.name=name
    }
}

class product{
    
    let name:String
    let num:String
    let count:Int
    let img:String
    
    init(name:String, num:String, count:Int, img:String ) {
        self.name=name
        self.num=num
        self.count=count
        self.img=img
    }

}
