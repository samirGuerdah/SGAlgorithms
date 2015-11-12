
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



class Node <Item> {
	
	var item: Item
	var next: Node?
	
	init(item : Item, next: Node?){
		self.item = item
		self.next = next
	}
}


struct PushdownStackLinkedList<T> {
	
	var first : Node<T>?
	var n = 0 // Number of elements
	
	mutating func push(item: T) {
		n++
		let newFirst = Node<T>.init(item: item, next: first)
		first = newFirst
	}
	
	mutating func pop() -> T? {
		if n != 0 { n-- }
		let firstNode = first
		first = first?.next
		return firstNode?.item
	}
	
	func isEmpty() -> Bool {
		return n == 0
	}
	
	func size() -> Int {
		return n;
	}
}
