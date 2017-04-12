//
//  ResultData.swift
//  swift学習
//
//  Created by 伊藤 剛 on 2017/04/13.
//  Copyright © 2017年 dw-test01. All rights reserved.
//

import Foundation

class  ResultData:NSObject {
    
    override init() {
    }
    var test1 : String!
    /**  */
    enum resultCode {
        case sucsses
        case dbFaild
        case apiFaild
        case apiZero
    }
    
    struct kyoutsuResultData<E> {
        var resultCode:resultCode
        var resultData:Any
    }
    
    func results(data:Any) -> kyoutsuResultData<Any> {
        return kyoutsuResultData(resultCode: resultCode.sucsses, resultData: "TEST")
    }
    
    
    
    
}
