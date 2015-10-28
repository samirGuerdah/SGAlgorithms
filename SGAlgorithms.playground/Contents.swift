
//: Playground - noun: a place where people can play

import UIKit

/** Some functional programmming concepts  **/

// Fibonacci
func fibonacci(n: Int) -> Int {
	return n <= 2 ? 1 : fibonacci(n-1) + fibonacci(n-2)
}

// Maximum in an Array
extension Array {
	func head() -> Element? {
		return self.count > 0 ? self[0] : nil
	}
	
	func tail() -> [Element]? {
		return self.count > 0 ? Array(self[1..<count]) : nil
	}
}

extension Array where Element : Comparable{
	
	func maximum() -> Element? {
		
		if self.count == 0 { return nil}
		if self.count == 1 {return self[0]}
		
		let h = head()
		let t = tail()
		
		return h >= t?.maximum() ? h : t?.maximum()
	}
}