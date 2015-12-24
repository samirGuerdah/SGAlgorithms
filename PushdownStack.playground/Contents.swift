
protocol Stack {
    
    typealias Element
    
    func push(item: Element)
    func pop() -> Element?
    func isEmpty() -> Bool
    func size() -> Int
}

struct  PushdownStack<Element> : CollectionType, CustomStringConvertible, ArrayLiteralConvertible {
	
    private var items = [Element]()
	
	mutating func push(item: Element){
		items.append(item)
	}
	
	mutating func pop() -> Element? {
		if size() == 0 {return nil}
		return items.removeLast()
	}

	func size() -> Int {
		return items.count
	}
    
    // ColelctionType
    var startIndex : Int { return 0 }
    var endIndex : Int { return items.count }
    
    subscript(idx: Int) -> Element {
        return items[idx]
    }
    
    // ArrayLiteralConvertible
    init(arrayLiteral elements: Element...){
        items = elements
    }
    
    // CustomStringConvertible
    var description: String { return "Stack items : \(items)" }
}

// PushdownStack example usage
var pushdownStack : PushdownStack = [1, 2, 5]
pushdownStack.pop()
pushdownStack.push(9)














