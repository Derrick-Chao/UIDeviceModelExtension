import UIKit

extension UIDevice {

    public enum DeviceModelType: String {
        case iPhone5 = "iPhone 5"
        case iPhone5c = "iPhone 5c"
        case iPhone5s = "iPhone 5s"
        case iPhoneSE = "iPhone SE"
        case iPhone6 = "iPhone 6"
        case iPhone6Plus = "iPhone 6 Plus"
        case iPhone6s = "iPhone 6S"
        case iPhone6sPlus = "iPhone 6S Plus"
        case iPhone7 = "iPhone 7"
        case iPhone7Plus = "iPhone 7 Plus"
        case iPhone8 = "iPhone 8"
        case iPhone8Plus = "iPhone 8 Plus"
        case iPhoneX = "iPhone X"
        case iPhoneXR = "iPhone XR"
        case iPhoneXS = "iPhone XS"
        case iPhoneXSMax = "iPhone XS Max"
        case iPhone4_7Inches_Device_Zoomed_Mode = "iPhone 4.7 Device Zoomed Mode"   // 320x568
        case iPhone5_5Inches_Device_Zoomed_Mode = "iPhone 5.5 Device Zoomed Mode"   // 375x667
        case iPhone11 = "iPhone 11"
        case iPhone11Pro = "iPhone 11 Pro"
        case iPhone11ProMax = "iPhone 11 Pro Max"
        case iPhoneSE2nd = "iPhoneSE2nd"
        case iPhone12Mini = "iPhone 12 Mini"
        case iPhone12 = "iPhone 12"
        case iPhone12Pro = "iPhone 12 Pro"
        case iPhone12ProMax = "iPhone 12 Pro Max"
        case iPhone13Mini = "iPhone 13 Mini"
        case iPhone13 = "iPhone 13"
        case iPhone13Pro = "iPhone 13 Pro"
        case iPhone13ProMax = "iPhone 13 Pro Max"
        case Unknown = "unknown"
    }
    
    // MARK:- Public property
    /// 瀏海機Home Indicator 佔據的高度
    public static let homeIndicatorSpace: CGFloat = 34.0
    public static var allNotchiPhoneDevices: [DeviceModelType] {
        return [.iPhoneX, .iPhoneXR, .iPhoneXS, .iPhoneXSMax, .iPhone11, .iPhone11Pro, .iPhoneXR, .iPhone12Mini, .iPhone12, .iPhone12Pro, .iPhone12ProMax, .iPhone13Mini, .iPhone13, .iPhone13Pro, .iPhone13ProMax]
    }
    
    // MARK:- Public methods
    /// 判斷是否為iPhone
    public static var isiPhoneDevice: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    public static var isiPadDevice: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    /// 取得iPhone機型
    public func getDeviceModel() -> DeviceModelType {
    
        let name = modelName
        let deviceModel = getModelList().filter { (key, _) -> Bool in
            return key == name
        }
        
        let finalDeviceModel = (deviceModel.count != 0) ? deviceModel[name]! : DeviceModelType.Unknown
        return checkZoomedModeOn(finalDeviceModel)
    }
    
    /// 判斷當前機型是否包含在 devices 陣列中
    public func isOneOf(_ devices: [DeviceModelType]) -> Bool {
        return devices.contains(self.getDeviceModel())
    }
    
    /// 取得此iPhone的Model Name
    public var modelName: String {
        
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
    /// 各代iPhone Model Name 列表
    private func getModelList() -> [String: DeviceModelType] {
        
        let modelList: [String: DeviceModelType] = [
            "iPhone5,1": DeviceModelType.iPhone5,
            "iPhone5,2": DeviceModelType.iPhone5,
            "iPhone5,3": DeviceModelType.iPhone5c,
            "iPhone5,4": DeviceModelType.iPhone5c,
            "iPhone6,1": DeviceModelType.iPhone5s,
            "iPhone6,2": DeviceModelType.iPhone5s,
            "iPhone8,4": DeviceModelType.iPhoneSE,
            "iPhone7,2": DeviceModelType.iPhone6,
            "iPhone7,1": DeviceModelType.iPhone6Plus,
            "iPhone8,1": DeviceModelType.iPhone6s,
            "iPhone8,2": DeviceModelType.iPhone6sPlus,
            "iPhone9,1": DeviceModelType.iPhone7,
            "iPhone9,3": DeviceModelType.iPhone7,
            "iPhone9,2": DeviceModelType.iPhone7Plus,
            "iPhone9,4": DeviceModelType.iPhone7Plus,
            "iPhone10,1": DeviceModelType.iPhone8,
            "iPhone10,4": DeviceModelType.iPhone8,
            "iPhone10,2": DeviceModelType.iPhone8Plus,
            "iPhone10,5": DeviceModelType.iPhone8Plus,
            "iPhone10,3": DeviceModelType.iPhoneX,
            "iPhone10,6": DeviceModelType.iPhoneX,
            "iPhone11,2": DeviceModelType.iPhoneXS,
            "iPhone11,4": DeviceModelType.iPhoneXSMax,
            "iPhone11,6": DeviceModelType.iPhoneXSMax,
            "iPhone11,8": DeviceModelType.iPhoneXR,
            "iPhone12,1": DeviceModelType.iPhone11,
            "iPhone12,3": DeviceModelType.iPhone11Pro,
            "iPhone12,5": DeviceModelType.iPhone11ProMax,
            "iPhone12,8": DeviceModelType.iPhoneSE2nd,
            "iPhone13,1": DeviceModelType.iPhone12Mini,
            "iPhone13,2": DeviceModelType.iPhone12,
            "iPhone13,3": DeviceModelType.iPhone12Pro,
            "iPhone13,4": DeviceModelType.iPhone12ProMax,
            "iPhone14,4": DeviceModelType.iPhone13Mini,
            "iPhone14,5": DeviceModelType.iPhone13,
            "iPhone14,2": DeviceModelType.iPhone13Pro,
            "iPhone14,3": DeviceModelType.iPhone13ProMax]
        return modelList
    }
    
    /// 確認裝置是否有調成 Zoomed模式，此模式螢幕解析度會改變
    private func checkZoomedModeOn(_ deviceModel: DeviceModelType) -> DeviceModelType {
        
        switch deviceModel {
        case .iPhone6, .iPhone6s, .iPhone7, .iPhone8:
            let screenSize = UIScreen.main.bounds.size
            if screenSize.width == 320.0 && screenSize.height == 568.0 {
                return DeviceModelType.iPhone4_7Inches_Device_Zoomed_Mode
            }
            return deviceModel
        case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
            let screenSize = UIScreen.main.bounds.size
            if screenSize.width == 375.0 && screenSize.height == 667.0 {
                return DeviceModelType.iPhone5_5Inches_Device_Zoomed_Mode
            }
            return deviceModel
        default:
            return deviceModel
        }
    }
}
