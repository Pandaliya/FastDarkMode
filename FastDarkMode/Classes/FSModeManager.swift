// Zhangpan
let kStyleMode = "fs_style_mode_select"
public enum FMStyleMode: Int {
    case auto = 0
    case light = 1
    case dark = 2
}

final public class FSModeManager {
    public static var shared: FSModeManager = {
        let sha = FSModeManager()
        return sha
    }()
    private init() {}
    
    var mainWindow: UIWindow? = nil
    var mode: FSModeProtocol = FSModeDefault()
    
    public func config(window: UIWindow, mode: FSModeProtocol? = nil) {
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
            if showAnimate {
                self.showModeChangeAnimate()
            }
            self.mainWindow?.modeDidChanged()
            self.configMainWindow()
        }
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
    }
    
    private(set) lazy var modeStyle: FMStyleMode = {
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
