// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SATSolver",
    products: [
        .library(name: "SATSolver", targets: ["SATSolver"]),
        
        // MiniSat
        .library(name: "MiniSat", targets: ["MiniSat"]),
        .library(name: "CMiniSat", targets: ["CMiniSat"]),
    ],
    targets: [
        .target(name: "SATSolver"),
        
        // MiniSat
        .target(name: "MiniSat", dependencies: ["CMiniSat", "SATSolver"]),
        .target(name: "CMiniSat", dependencies: ["CppMiniSat"]),
        .target(name: "CppMiniSat"),
    ],
    cxxLanguageStandard: .cxx11
)
