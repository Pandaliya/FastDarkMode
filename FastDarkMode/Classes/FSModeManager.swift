// Zhangpan
let kStyleMode = "fs_style_mode_select"
public enum FMStyleMode: Int, CaseIterable {
    case auto = 0
    case light = 1
    case dark = 2
}

public let FMM: FSModeManager = FSModeManager.shared
public extension Notification.Name {
    static let FSModeChanged = Notification.Name("FAST_DARK_MODE_CHANGED")
}

final public class FSModeManager {
    public static var shared: FSModeManager = {
        let sha = FSModeManager()
        return sha
    }()
    private init() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleAccessibilityChange),
            name: UIAccessibility.darkerSystemColorsStatusDidChangeNotification,
            object: nil
        )
    }
    
    public var mainWindow: UIWindow? = nil
    public var mode: FSModeProtocol = FSModeDefault()
    public var isDarkMode: Bool {
        return self.mainWindow?.traitCollection.userInterfaceStyle == .dark
    }
    
    public var imageNameTile: String = ""
    
    public func configLaunch(window: UIWindow, mode: FSModeProtocol? = nil) {
        if let m = mode {
            self.mode = m
        }
        self.mainWindow = window
        self.configMainWindow()
    }
    
    public func updateMode(style: FMStyleMode, mode: FSModeProtocol? = nil, showAnimate: Bool = true) {
        var styleChanged: Bool = false
        
        if let m = mode {
            self.mode = m
            styleChanged = true
        }
        
        if self.modeStyle != style {
            self.modeStyle = style
            UserDefaults.standard.set(style.rawValue, forKey: kStyleMode)
            UserDefaults.standard.synchronize()
            styleChanged = true
        }
        
        if styleChanged {
            self.changeUIMode(showAnimate: showAnimate)
        }
    }
    
    func changeUIMode(showAnimate: Bool) {
        if showAnimate {
            self.showModeChangeAnimate()
        }
        self.configMainWindow()
        NotificationCenter.default.post(name: .FSModeChanged, object: nil)
        self.mainWindow?.modeDidChanged()
    }
    
    // 模式切换动画（使黑夜/白天模式切换更顺滑）
    public func showModeChangeAnimate() {
        UIGraphicsBeginImageContextWithOptions(UIScreen.main.bounds.size, true, UIScreen.main.scale)
        guard let context = UIGraphicsGetCurrentContext(), let window = self.mainWindow else {
            return
        }
        
        window.layer.render(in: context)
        let viewImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        let imageView = UIImageView.init(frame: UIScreen.main.bounds)
        imageView.image = viewImage
        imageView.isUserInteractionEnabled = true
        window.addSubview(imageView)
        UIView.animate(withDuration: 0.5) {
            imageView.alpha = 0
        } completion: { finished in
            imageView.removeFromSuperview()
        }
    }
    
    func configMainWindow(){
        guard let window = self.mainWindow else {
            return
        }
        
        if #available(iOS 13.0, *) {
            switch self.modeStyle {
            case .dark:
                window.overrideUserInterfaceStyle = .dark
            case .light:
                window.overrideUserInterfaceStyle = .light
            case .auto:
                window.overrideUserInterfaceStyle = .unspecified
                break
            }
        }
        
        if #available(iOS 13.0, *) {
            switch UITraitCollection.current.userInterfaceStyle {
            case .light:
                self.imageNameTile = mode.imageNameTile
            case .dark:
                self.imageNameTile = mode.imageNameTile + "_dark"
            case .unspecified:
                self.imageNameTile = mode.imageNameTile
            @unknown default:
                break
            }
        } else {
            // Fallback on earlier versions
        }
    }
    
    //
    @objc func handleAccessibilityChange() {
        // 在这里处理系统颜色设置的变化
        debugPrint("FastDarkMode: handleAccessibilityChange-\(UITraitCollection.current.userInterfaceStyle)")
        if self.modeStyle == .auto {
            self.changeUIMode(showAnimate: false)
        }
    }
    
    //
    public private(set) lazy var modeStyle: FMStyleMode = {
        let rawType = UserDefaults.standard.integer(forKey: kStyleMode)
        if let ms = FMStyleMode.init(rawValue: rawType) {
            return ms
        }
        return .auto
    }()
}


extension FSModeManager: NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
