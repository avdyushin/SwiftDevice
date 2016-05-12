//
//  Device.swift
//
//  Created by Grigory Avdyushin on 29.01.16.
//  Copyright © 2016 Grigory Avdyushin. All rights reserved.
//

import UIKit

enum DeviceMaxWidth: Float {
    case iPhone4     = 480.0
    case iPhone5     = 568.0
    case iPhone6     = 667.0
    case iPhone6Plus = 736.0
    case iPad        = 1024.0
    case iPadPro     = 1366.0
}

enum DeviceType: String {
    case iPhone
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6Plus
    case iPad
    case iPadPro
    case iTV
    case Unknown
}

extension UIDevice {
    
    class func maxDeviceWidth() -> Float {
        let w = Float(UIScreen.mainScreen().bounds.width)
        let h = Float(UIScreen.mainScreen().bounds.height)
        return fmax(w, h)
    }
    
    class func deviceType() -> DeviceType {
        if isPhone4()     { return DeviceType.iPhone4     }
        if isPhone5()     { return DeviceType.iPhone5     }
        if isPhone6()     { return DeviceType.iPhone6     }
        if isPhone6Plus() { return DeviceType.iPhone6Plus }
        if isPadPro()     { return DeviceType.iPadPro     }
        if isPad()        { return DeviceType.iPad        }
        if isPhone()      { return DeviceType.iPhone      }
        if isTV()         { return DeviceType.iTV         }
        return DeviceType.Unknown
    }

    class func isPhone() -> Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == .Phone
    }

    class func isPad() -> Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == .Pad
    }
    
    class func isTV() -> Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == .TV
    }
    
    class func isPhone4() -> Bool {
        return isPhone() && maxDeviceWidth() == DeviceMaxWidth.iPhone4.rawValue
    }

    class func isPhone5() -> Bool {
        return isPhone() && maxDeviceWidth() == DeviceMaxWidth.iPhone5.rawValue
    }
    
    class func isPhone6() -> Bool {
        return isPhone() && maxDeviceWidth() == DeviceMaxWidth.iPhone6.rawValue
    }
    
    class func isPhone6Plus() -> Bool {
        return isPhone() && maxDeviceWidth() == DeviceMaxWidth.iPhone6Plus.rawValue
    }
    
    class func isPadPro() -> Bool {
        return isPad() && maxDeviceWidth() == DeviceMaxWidth.iPadPro.rawValue
    }
    
}
