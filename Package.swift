// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "YunaLlamaSource",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "YunaLlamaSource",
            targets: ["YunaLlamaSource"]
        )
    ],
    targets: [
        .target(
            name: "YunaLlamaSource",
            path: ".",
            sources: [
                "ggml/src/ggml.c",
                "ggml/src/ggml.cpp",
                "ggml/src/ggml-alloc.c",
                "ggml/src/ggml-backend.cpp",
                "ggml/src/ggml-backend-meta.cpp",
                "ggml/src/ggml-opt.cpp",
                "ggml/src/ggml-threading.cpp",
                "ggml/src/ggml-quants.c",
                "ggml/src/gguf.cpp"
            ],
            publicHeadersPath: "ggml/include",
            cSettings: [
                .headerSearchPath("ggml/src")
            ],
            cxxSettings: [
                .headerSearchPath("ggml/src")
            ]
        )
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx17
)
