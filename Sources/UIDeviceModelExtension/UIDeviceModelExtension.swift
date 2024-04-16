import UIKit

extension UIDevice {
    /**
     自定義判斷裝置的型號與屬性
     */
    public enum DeviceModel: Equatable {
        // MARK: iPhone
        case iPhone4
        case iPhone4s
        case iPhone5
        case iPhone5c
        case iPhone5s
        case iPhoneSE
        case iPhone6
        case iPhone6Plus
        case iPhone6s
        case iPhone6sPlus
        case iPhone7
        case iPhone7Plus
        case iPhone8
        case iPhone8Plus
        case iPhoneX
        case iPhoneXR
        case iPhoneXS
        case iPhoneXSMax
        case iPhone11
        case iPhone11Pro
        case iPhone11ProMax
        case iPhoneSE2nd
        case iPhone12Mini
        case iPhone12
        case iPhone12Pro
        case iPhone12ProMax
        case iPhone13Mini
        case iPhone13
        case iPhone13Pro
        case iPhone13ProMax
        case iPhone14
        case iPhone14Plus
        case iPhone14Pro
        case iPhone14ProMax
        case iPhone15
        case iPhone15Plus
        case iPhone15Pro
        case iPhone15ProMax
        // MARK: iPad
        case iPad2
        case iPad3
        case iPad4
        case iPadAir
        case iPadAir2
        case iPad5
        case iPad6
        case iPadAir3
        case iPad7
        case iPad8
        case iPad9
        case iPadAir4
        case iPadMini
        case iPadMini2
        case iPadMini3
        case iPadMini4
        case iPadMini5
        case iPadMini6
        case iPadPro9Inch           // iPad Pro 9.7-inch
        case iPadPro12Inch          // iPad Pro 12.9-inch
        case iPadPro12Inch2nd       // iPad Pro 12.9-inch (2nd generation)
        case iPadPro10Inch          // iPad Pro 10.5-inch
        case iPadPro11Inch          // iPad Pro 11-inch
        case iPadPro12Inch3rd       // iPad Pro 12.9-inch (3rd generation)
        case iPadPro11Inch2nd       // iPad Pro 11-inch (2nd generation)
        case iPadPro12Inch4th       // iPad Pro 12.9-inch (4th generation)
        case iPadPro11Inch3rd       // iPad Pro 11-inch (3rd generation)
        case iPadPro12Inch5th       // iPad Pro 12.9-inch (5th generation)
        case unknown(String)
        
        public var deviceDescription: String {
            switch self {
            case .iPhone4: return "iPhone 4"
            case .iPhone4s: return "iPhone 4s"
            case .iPhone5: return "iPhone 5"
            case .iPhone5c: return "iPhone 5c"
            case .iPhone5s: return "iPhone 5s"
            case .iPhone6: return "iPhone 6"
            case .iPhone6Plus: return "iPhone 6 Plus"
            case .iPhone6s: return "iPhone 6s"
            case .iPhone6sPlus: return "iPhone 6s Plus"
            case .iPhone7: return "iPhone 7"
            case .iPhone7Plus: return "iPhone 7 Plus"
            case .iPhoneSE: return "iPhone SE"
            case .iPhone8: return "iPhone 8"
            case .iPhone8Plus: return "iPhone 8 Plus"
            case .iPhoneX: return "iPhone X"
            case .iPhoneXS: return "iPhone Xs"
            case .iPhoneXSMax: return "iPhone Xs Max"
            case .iPhoneXR: return "iPhone Xʀ"
            case .iPhone11: return "iPhone 11"
            case .iPhone11Pro: return "iPhone 11 Pro"
            case .iPhone11ProMax: return "iPhone 11 Pro Max"
            case .iPhoneSE2nd: return "iPhone SE (2nd generation)"
            case .iPhone12: return "iPhone 12"
            case .iPhone12Mini: return "iPhone 12 mini"
            case .iPhone12Pro: return "iPhone 12 Pro"
            case .iPhone12ProMax: return "iPhone 12 Pro Max"
            case .iPhone13: return "iPhone 13"
            case .iPhone13Mini: return "iPhone 13 mini"
            case .iPhone13Pro: return "iPhone 13 Pro"
            case .iPhone13ProMax: return "iPhone 13 Pro Max"
            case .iPhone14: return "iPhone 14"
            case .iPhone14Plus: return "iPhone 14 Plus"
            case .iPhone14Pro: return "iPhone 14 Pro"
            case .iPhone14ProMax: return "iPhone 14 Pro Max"
            case .iPhone15: return "iPhone 15"
            case .iPhone15Plus: return "iPhone 15 Plus"
            case .iPhone15Pro: return "iPhone 15 Pro"
            case .iPhone15ProMax: return "iPhone 15 Pro Max"
            case .iPad2: return "iPad 2"
            case .iPad3: return "iPad (3rd generation)"
            case .iPad4: return "iPad (4th generation)"
            case .iPadAir: return "iPad Air"
            case .iPadAir2: return "iPad Air 2"
            case .iPad5: return "iPad (5th generation)"
            case .iPad6: return "iPad (6th generation)"
            case .iPadAir3: return "iPad Air (3rd generation)"
            case .iPad7: return "iPad (7th generation)"
            case .iPad8: return "iPad (8th generation)"
            case .iPad9: return "iPad (9th generation)"
            case .iPadAir4: return "iPad Air (4th generation)"
            case .iPadMini: return "iPad Mini"
            case .iPadMini2: return "iPad Mini 2"
            case .iPadMini3: return "iPad Mini 3"
            case .iPadMini4: return "iPad Mini 4"
            case .iPadMini5: return "iPad Mini (5th generation)"
            case .iPadMini6: return "iPad Mini (6th generation)"
            case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
            case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
            case .iPadPro12Inch2nd: return "iPad Pro (12.9-inch) (2nd generation)"
            case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
            case .iPadPro11Inch: return "iPad Pro (11-inch)"
            case .iPadPro12Inch3rd: return "iPad Pro (12.9-inch) (3rd generation)"
            case .iPadPro11Inch2nd: return "iPad Pro (11-inch) (2nd generation)"
            case .iPadPro12Inch4th: return "iPad Pro (12.9-inch) (4th generation)"
            case .iPadPro11Inch3rd: return "iPad Pro (11-inch) (3rd generation)"
            case .iPadPro12Inch5th: return "iPad Pro (12.9-inch) (5th generation)"
            case .unknown(let identifier): return identifier
            }
        }
        
        public static func == (lhs: DeviceModel, rhs: DeviceModel) -> Bool {
            return lhs.deviceDescription == rhs.deviceDescription
        }
    }
    
    // MARK:- Public property
    /// 瀏海機Home Indicator 佔據的高度
    public static let homeIndicatorSpace: CGFloat = 34.0
    /// 瀏海機iPhone裝置列表
    public static var allNotchiPhoneDevices: [DeviceModel] {
        return [.iPhoneX, .iPhoneXR, .iPhoneXS, .iPhoneXSMax, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12Mini, .iPhone12, .iPhone12Pro, .iPhone12ProMax, .iPhone13Mini, .iPhone13, .iPhone13Pro, .iPhone13ProMax, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax]
    }
    /// 判斷是否是瀏海機，來看是否Layout要注意SafeArea
    public var isNotchiPhoneDevice: Bool {
        return isOneOf(UIDevice.allNotchiPhoneDevices)
    }
    
    /// 判斷是否為iPhone
    public var isiPhoneDevice: Bool {
        return userInterfaceIdiom == .phone
    }
    
    /// 判斷是否為iPad
    public var isiPadDevice: Bool {
        return userInterfaceIdiom == .pad
    }
    
    /**
     判斷是否開啟Zoomed
     
     Models that support Display Zoom (2022/01/29 edited)
     - iPhone 6s
     - iPhone 6s Plus
     - iPhone 7
     - iPhone 7 Plus
     - iPhone 8
     - iPhone 8 Plus
     - iPhone X
     - iPhone XR
     - iPhone XS
     - iPhone XS Max
     - iPhone 11
     - iPhone 11 Pro
     - iPhone 11 Pro Max
     - iPhone SE (2nd generation)
     - iPhone 12 mini
     - iPhone 12
     - iPhone 12 Pro
     - iPhone 12 Pro Max
     - iPhone 13 mini
     - iPhone 13
     - iPhone 13 Pro
     - iPhone 13 Pro Max
     */
    public var isZoomed: Bool {
        if UIScreen.main.nativeScale < 3.0 && UIScreen.main.scale == 3.0 {
            // Plus series iDevice
            return (2.7..<3.0 ~= UIScreen.main.nativeScale)
        } else {
            return UIScreen.main.nativeScale > UIScreen.main.scale
        }
    }
    
    // MARK:- Public methods
    /// 偵測現在裝置的DeviceModel
    public func detectDeviceModel() -> DeviceModel {
            
        let deviceModel = mapToDevice(modelName())
        return deviceModel
    }
    
    /// 判斷當前機型是否包含在 devices 陣列中
    public func isOneOf(_ devices: [DeviceModel]) -> Bool {
        
        let deviceModel = detectDeviceModel()
        return devices.contains { $0 == deviceModel }
    }
    
    /// 取得此iPhone的Model Name
    public func modelName() -> String {
        
        var modelName = ""
        if TARGET_OS_SIMULATOR != 0 {
            modelName = ProcessInfo.processInfo.environment["SIMULATOR_MODEL_IDENTIFIER"] ?? ""
        } else {
            var systemInfo = utsname()
            uname(&systemInfo)
            let machineMirror = Mirror(reflecting: systemInfo.machine)
            modelName = machineMirror.children.reduce("") { (identifier, element) in
                guard let value = element.value as? Int8, value != 0 else { return identifier }
                return identifier + String(UnicodeScalar(UInt8(value)))
            }
        }
        return modelName
    }
    
    // MARK:- Private methods
    
    /// 根據此裝置的Model name來找出DeviceModel
    /// - Parameter modelName: iDevice Model name, e.g. iPhone14,3 or iPad13,11
    /// - Returns: enum DeviceModel
    private func mapToDevice(_ modelName: String) -> DeviceModel {
        
        switch modelName {
        case "iPhone3,1", "iPhone3,2", "iPhone3,3": return .iPhone4
        case "iPhone4,1": return .iPhone4s
        case "iPhone5,1", "iPhone5,2": return .iPhone5
        case "iPhone5,3", "iPhone5,4": return .iPhone5c
        case "iPhone6,1", "iPhone6,2": return .iPhone5s
        case "iPhone7,2": return .iPhone6
        case "iPhone7,1": return .iPhone6Plus
        case "iPhone8,1": return .iPhone6s
        case "iPhone8,2": return .iPhone6sPlus
        case "iPhone9,1", "iPhone9,3": return .iPhone7
        case "iPhone9,2", "iPhone9,4": return .iPhone7Plus
        case "iPhone8,4": return .iPhoneSE
        case "iPhone10,1", "iPhone10,4": return .iPhone8
        case "iPhone10,2", "iPhone10,5": return .iPhone8Plus
        case "iPhone10,3", "iPhone10,6": return .iPhoneX
        case "iPhone11,2": return .iPhoneXS
        case "iPhone11,4", "iPhone11,6": return .iPhoneXSMax
        case "iPhone11,8": return .iPhoneXR
        case "iPhone12,1": return .iPhone11
        case "iPhone12,3": return .iPhone11Pro
        case "iPhone12,5": return .iPhone11ProMax
        case "iPhone12,8": return .iPhoneSE2nd
        case "iPhone13,2": return .iPhone12
        case "iPhone13,1": return .iPhone12Mini
        case "iPhone13,3": return .iPhone12Pro
        case "iPhone13,4": return .iPhone12ProMax
        case "iPhone14,5": return .iPhone13
        case "iPhone14,4": return .iPhone13Mini
        case "iPhone14,2": return .iPhone13Pro
        case "iPhone14,3": return .iPhone13ProMax
        case "iPhone14,7": return .iPhone14
        case "iPhone14,8": return .iPhone14Plus
        case "iPhone15,2": return .iPhone14Pro
        case "iPhone15,3": return .iPhone14ProMax
        case "iPhone15,4": return .iPhone15
        case "iPhone15,5": return .iPhone15Plus
        case "iPhone16,1": return .iPhone15Pro
        case "iPhone16,2": return .iPhone15ProMax
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return .iPad2
        case "iPad3,1", "iPad3,2", "iPad3,3": return .iPad3
        case "iPad3,4", "iPad3,5", "iPad3,6": return .iPad4
        case "iPad4,1", "iPad4,2", "iPad4,3": return .iPadAir
        case "iPad5,3", "iPad5,4": return .iPadAir2
        case "iPad6,11", "iPad6,12": return .iPad5
        case "iPad7,5", "iPad7,6": return .iPad6
        case "iPad11,3", "iPad11,4": return .iPadAir3
        case "iPad7,11", "iPad7,12": return .iPad7
        case "iPad11,6", "iPad11,7": return .iPad8
        case "iPad12,1", "iPad12,2": return .iPad9
        case "iPad13,1", "iPad13,2": return .iPadAir4
        case "iPad2,5", "iPad2,6", "iPad2,7": return .iPadMini
        case "iPad4,4", "iPad4,5", "iPad4,6": return .iPadMini2
        case "iPad4,7", "iPad4,8", "iPad4,9": return .iPadMini3
        case "iPad5,1", "iPad5,2": return .iPadMini4
        case "iPad11,1", "iPad11,2": return .iPadMini5
        case "iPad14,1", "iPad14,2": return .iPadMini6
        case "iPad6,3", "iPad6,4": return .iPadPro9Inch
        case "iPad6,7", "iPad6,8": return .iPadPro12Inch
        case "iPad7,1", "iPad7,2": return .iPadPro12Inch2nd
        case "iPad7,3", "iPad7,4": return .iPadPro10Inch
        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4": return .iPadPro11Inch
        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8": return .iPadPro12Inch3rd
        case "iPad8,9", "iPad8,10": return .iPadPro11Inch2nd
        case "iPad8,11", "iPad8,12": return .iPadPro12Inch4th
        case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7": return .iPadPro11Inch3rd
        case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11": return .iPadPro12Inch5th
        default: return .unknown(modelName)
        }
    }
}
