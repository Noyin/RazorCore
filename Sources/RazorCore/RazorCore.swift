import UIKit


public class RazorCore {
    /// Allows you to convert a 6 hexadecimal string into a UIColor instance
    /// - warning: The "#" symbol is stripped from the beginning of the string submitted here.
    /// - Parameters:
    ///   - hexString: A 6-digit hexadecimal string. Use 6 digits rather 8, and add the accompanying alpha value in the second parameter
    ///   - alpha: A number between 0.0 and 1.0 indicating how transparent the color is
    /// - Returns: A UIColor defined by the `hexString` parameter
    internal class func colorFromHexString(_ hexString: String, _ alpha: CGFloat = 1.0) -> UIColor {
        let r, g, b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }

        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }

    /// The most eye-pleasing color known to humanity
    public static var razeColor: UIColor {
         return colorFromHexString("006736")
    }

    /// The secondary most eye-pleasing color known to humanity
    public static var secondaryRazeColor: UIColor {
         return colorFromHexString("FCFFFD")
    }
}
