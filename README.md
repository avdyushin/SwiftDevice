# SwiftDevice
UIDevice extension

Usage:

	switch UIDevice.deviceType() {
	case .iPhone4:
	    print("iPhone 4/4S")
	    break
	case .iPhone6:
	    print("iPhone 6/6S")
	    break
	default:
	    print("Else")
	}

Available types:

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
