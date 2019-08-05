//
//  ViewController.swift
//  DemoClosure1
//
//  Created by Nguyen Trung on 8/5/19.
//  Copyright © 2019 Nguyen Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgHinh: UIImageView!
    
    
//
//    func tinhtoan() -> Int {
//        var tong = 0
//
////        for i in 0...1000{
////            tong += i
////        }
//
//        DispatchQueue.global().async {
//            for i in 0...1000{
//                tong += i
//            }
//
//            DispatchQueue.main.async {
//                return tong
//            }
//
//        }
//        return tong
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print(tinhtoan())
//
//
//    }
    
    
    
    
    
    
//    func tinhtoan(bien: @escaping (Int)->()){
//        var tong = 0
//        DispatchQueue.global().async {
//            for i in 0...1000{
//                tong += i
//            }
//            bien(tong)
//        }
//    }
//
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//
//        tinhtoan { (tong) in
//            print(tong)
//        }
//
//
//    }
    
    
    func tenHam(bien:Int, bien2: (Int)->()) -> Int{
        return 1
    }
    
    
    
    
        func tinhtoan(bien: @escaping (Data)->()){
            DispatchQueue.global().async {

                let url = URL(string: "https://nerdist.com/wp-content/uploads/2019/03/IM-header-1200x676.jpg")

                let data = try? Data(contentsOf: url!)

                DispatchQueue.main.async {

                    bien(data!)
                }

            }

        }




    override func viewDidLoad() {
        super.viewDidLoad()

        tinhtoan { (data) in
            self.imgHinh.image = UIImage(data: data)
        }

    }
    


}

