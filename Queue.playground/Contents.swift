

struct Queue<T> {
	private var items = [T]()
	
	mutating func enqueue(item : T) {
		items.append(item);
	}
	
	mutating func dequeue() -> T? {
		
		if (size() == 0) { return nil}
		return items.removeFirst()
	}
	
	func isEmpty() -> Bool {
		return items.count == 0
	}
	
	func size() -> Int {
		return items.count
	}
}

/**   Queue with a linked list **/
class Node <Item> {
	
	var item: Item
	var next: Node?

	init(item : Item, next: Node?){
		self.item = item
		self.next = next
	}
}

struct QueueLikedList<T> {
	
	private var first : Node<T>?
	private var last : Node<T>?
	private var n = 0
	
	mutating func enqueue(item : T) {
		let newLastNode = Node<T>.init(item: item, next: nil)
		let oldLast = last
		if isEmpty() {
			first = newLastNode
			last = newLastNode
		}
		else{
			oldLast?.next = newLastNode
			last = newLastNode
		}
		n++
	}
	
	mutating func dequeue() -> T? {
		if n != 0 { n-- }
		let firstNode = first
		first = first?.next
		return firstNode?.item
	}
	
	func isEmpty() -> Bool {
		return n == 0
	}
	
	func size() -> Int {
		return n
	}
}