# SAT Solver Interface for Swift

The interface is defined as follows:

```swift
public enum SATSolverResult {
    case satisfiable
    case unsatisfiable
}

public enum SATSolverLiteralValue {
    case positive
    case negative
    case unassigned
}

public protocol SATSolver {
    associatedtype Literal
    
    var maxVar: Literal { get }
    
    init()
    func new() -> Literal
    func add(literal: Literal)
    func assume(literal: Literal)
    func solve() -> SATSolverResult
    func value(of literal: Literal) -> SATSolverLiteralValue
    func failed(literal: Literal) -> Bool
}
```
