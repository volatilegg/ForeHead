//
//  CMAccelerationExtenstion.swift
//  ForeHead
//
//  Created by Do Duc on 18/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import CoreMotion

extension CMAcceleration {
    var screenIsUp: Bool {
        return x.isApporimately(number: 0.0) && y.isApporimately(number: 0.0) && z.isApporimately(number: -1.0)
    }
    
    var screenIsOn4head: Bool {
        return x.isApporimately(number: 1.0) && y.isApporimately(number: 0.0) && z.isApporimately(number: 0.0)
    }
    
    var screenIsDown: Bool {
        return x.isApporimately(number: 0.0) && y.isApporimately(number: 0.0) && z.isApporimately(number: 1.0)
    }
}

extension Double {
    static let delta: Double = 0.2
    
    func isApporimately(number: Double) -> Bool {
        return self > number - Double.delta && self < number + Double.delta
    }
}
