
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