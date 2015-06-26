import Foundation

/// JSON serialization format
public final class JSON: Binary {
    
     override class func objectFromData(data: NSData) -> [String : AnyObject]? {
        do {
            let o: AnyObject =  try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
            return o as? [String : AnyObject]
        } catch let error as NSError {
            Swift.print(error)
            return nil
        }
    }
    
    override class func dataFromObject(object: [String : AnyObject], prettyPrint: Bool) -> NSData?  {
        
        guard NSJSONSerialization.isValidJSONObject(object) else { return nil }
        
        let options: NSJSONWritingOptions = prettyPrint ? .PrettyPrinted : []
        let data: NSData?
        do {
            data = try NSJSONSerialization.dataWithJSONObject(object, options: options)
        } catch let error as NSError {
            Swift.print(error)
            data = nil
        }
        return data
    }
}