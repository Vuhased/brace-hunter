# Brace-Hunter 🛡️

**Created by: vuhased**

### What is this?
Brace-Hunter is a lightweight, high-speed Bash utility designed for Android OS developers and C-style programmers. It performs a "pre-flight" check of your source code to ensure that all curly braces `{ }` are perfectly balanced.

### Why do you need it?
When manually patching complex system files like `ConnectivityService.java` or `Services.java` during an Android build (AOSP/LineageOS), it's easy to lose a bracket. The compiler might only tell you about the error after 30 minutes of building. 

**Brace-Hunter saves your time by:**
* Ignoring single-line comments (`//`)
* Ignoring multi-line comment blocks (`/* ... */`)
* Ignoring string literals (`"ignore this { brace"`)
* Giving you an instant "Go/No-Go" status before you start `mka bacon`.

### Support
Works with: **Java, C, C++, Rust, Kotlin, and JavaScript.**
