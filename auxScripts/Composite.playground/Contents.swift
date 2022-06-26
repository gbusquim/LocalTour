
import XCTest

/// The base Component class declares common operations for both simple and
/// complex objects of a composition.
protocol Component {

    var parent: Component? { get set }

 
    func add(component: Component)
    func remove(component: Component)

    func isComposite() -> Bool
    func operation() -> String
}

extension Component {

    func add(component: Component) {}
    func remove(component: Component) {}
    func isComposite() -> Bool {
        return false
    }
}

//protocol Leaf {
//    var parent: Component? { get set }
//    func operation() -> String
//
//}
//
//extension Leaf {
//
//    func operation () -> String {
//        return "A leaf!"
//    }
//}

class Category: Component {

    var parent: Component?
    var type: String = "local"

    func operation() -> String {
        return type
    }
    
    func isComposite() -> Bool {
        return false
    }
}


class Composite: Component {
    var parent: Component?
    private var children = [Component]()
    
    func operation() -> String {
        for child in children
        {
            print(child.operation())
        }
        return ""
    }
    

    /// This fields contains the conponent subtree.
    

    /// A composite object can add or remove other components (both simple or
    /// complex) to or from its child list.
    func add(component: Component) {
        var item = component
        item.parent = self
        children.append(item)
    }

    func remove(component: Component) {
        // ...
    }

    func isComposite() -> Bool {
        return true
    }
    
    func getChildren() -> [Component] {
        return children
    }

    /// The Composite executes its primary logic in a particular way. It
    /// traverses recursively through all its children, collecting and summing
    /// their results. Since the composite's children pass these calls to their
    /// children and so forth, the whole object tree is traversed as a result.
//    func operation() -> String {
//        let result = children.map({ $0.operation() })
//        return "Branch(" + result.joined(separator: " ") + ")"
//    }
}

//class Client {
//
//    /// The client code works with all of the components via the base interface.
//    static func someClientCode(component: Component) {
//        print("Result: " + component.operation())
//    }
//
//    /// Thanks to the fact that the child-management operations are also
//    /// declared in the base Component class, the client code can work with both
//    /// simple or complex components.
//    static func moreComplexClientCode(leftComponent: Component, rightComponent: Component) {
//        if leftComponent.isComposite() {
//            leftComponent.add(component: rightComponent)
//        }
//        print("Result: " + leftComponent.operation())
//    }
//}

/// Let's see how it all comes together.

        /// This way the client code can support the simple leaf components...
        let category = Category()
        print(category.operation())
        
        let component = Composite()
        print("Client: I've got a simple component:")

        let branch1 = Composite()
        branch1.add(component: category)

branch1.operation()

//for word in branch1.getChildren() {
//    print(word.operation())
//}
