import Foundation

final public class Log {
    
    static public func print(text: String, file: String = #file, function: String = #function) {
        guard
            let fileName = file.components(separatedBy: "/").last,
            let className = fileName.split(separator: ".").first
        else {
            Swift.print("(WARNING) [Log:print]: can't print!")
            return
        }
        Swift.print("\n(WARNING) [\(className).\(function)]: \(text)")
    }
    
}
