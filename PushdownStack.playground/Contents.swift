
import UIKit

struct  PushdownStack<Element> {
	
	private var items = [Element]()
	
	mutating func push(item: Element){
		items.append(item)
	}
	
	mutating func pop() -> Element? {
		if size() == 0 {return nil}
		return items.removeLast()
	}
	
	func isEmpty() -> Bool {
		return items.count == 0
	}
	
	func size() -> Int {
		return items.count
	}
}