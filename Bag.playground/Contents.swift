
struct Bag<T: Hashable> {
	private var items = Set<T>()
	
	mutating func add(item : T){
		items.insert(item)
	}
	
	func isEmpty() -> Bool {
		return items.count == 0
	}
	
	func size() -> Int {
		return items.count
	}
}

/**   Bag with a linked list **/
class Node <Item> {
	
	var item: Item
	var next: Node?
	
	init(item : Item, next: Node?){
		self.item = item
		self.next = next
	}
}

struct BagLinkedList<T> {
	
	private var n = 0
	private var first : Node<T>?
	
	mutating func add(item : T) {
		let oldFirst = first
		let newFirst = Node<T>.init(item: item, next: oldFirst)
		first = newFirst
		n++
	}
	
	func isEmpty() -> Bool {
		return n == 0
	}
	
	func size() -> Int {
		return n
	}
}