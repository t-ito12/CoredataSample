//
//  kyoutsuClass.swift
//  swift学習
//
//  Created by 伊藤 剛 on 2017/04/13.
//  Copyright © 2017年 dw-test01. All rights reserved.
//

import Foundation

class KyoutsuClass:NSObject {
    
    public func kyoutsusyori(data:AnyClass) -> ResultData{
        return ResultData.init().results(data: "TEST2")
    }
}
