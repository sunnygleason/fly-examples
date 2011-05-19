Fly is a Language Designed to do Something Different

Goals:

* Functional programming language designed for writing clean assembly
* Essentially Instruction Set + Smart Register Allocation + Fast Function Calls
* Direct access to x86_64 advanced instruction set (SSE 4.2+)
* As small as possible, but no smaller

Similarities to Erlang:

* Tail recursion optimization
* Immutable Message-Passing Style
* Pattern matching function dispatch
* Tuples/Structs
* Binary/Stream paradigms
* Lightweight processes / actors

Other useful things:

* Highly inline-able code
* Concurrency, Locking Primitives, & Atomic Operations
* UTF8 string support
* Producer/Consumer support (pipelined streams)
* Resource/Lock scopes (automatic reclaiming)
* Multiple return values: [q, r] = divmod(x, y)
* Structural Literals to create inline JSON-like objects (Map, Array, Scalar literals)

Interoperability:

* Auto-generate JNI access libraries
* Generate C-accessible libraries
* Generate accessible libraries for V8 JavaScript, Ruby, & Python

On The Radar, Still Thinking About:

* Vector operations?
* Type inference?
* Native access to C?
