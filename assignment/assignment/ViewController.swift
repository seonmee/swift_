//
//  ViewController.swift
//  assignment
//
//  Created by SWUCOMPUTER on 2017. 10. 8..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UITextFieldDelegate{
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var imgProduct: UIImageView! // 제품 사진
    @IBOutlet var txtProductCount: UITextField!// 남은 수량
    @IBOutlet var textFieldForSearch: UITextField!
    
    var category:Category?
    var pickOption = productData.branches
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title=category?.name
        self.view.addSubview(imgProduct)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // textField에 검색시
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if let item = category?.items{
        
            for i in 0...item.count-1{
            if (textField.text! == item[i].name){
                txtProductCount.text=String(item[i].count)
                
                let url=NSURL(string: item[i].img)
                let data=NSData(contentsOf: url as! URL)
                
                imgProduct.image=UIImage(data: data as! Data)
                self.view.addSubview(imgProduct)
            }
            }
        }
        
        return true
    }
    
    // pickerView 반환
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if let rowCount=category?.items?.count{
            return rowCount
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return category?.items?[row].name
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if let item=category?.items?[row]{
            txtProductCount.text=String(item.count)
            
            let url=NSURL(string: item.img)
            let data=NSData(contentsOf: url as! URL)
            
            imgProduct.image=UIImage(data: data as! Data)
            self.view.addSubview(imgProduct)
            
            }
        
    }
    
    

}

