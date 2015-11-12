

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