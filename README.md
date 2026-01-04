# Brace-Hunter 🛡️

**Created by: Vuhased** *(Developed with AI assistance Gemini to empower independent Android developers)*

### What is Brace-Hunter?
Brace-Hunter is a lightweight, high-speed Bash utility designed for Android OS developers (AOSP, LineageOS, etc.) and C-style programmers. It performs a "pre-flight" check of your source code to ensure that all curly braces `{ }` are perfectly balanced before you start a long compilation process.

### Why use it?
When manually patching complex system files like `ConnectivityService.java` during an Android build, a single missing bracket can crash your build after 30-60 minutes of waiting. 

**Brace-Hunter saves you time by:**
* Ignoring single-line comments (`//`)
* Ignoring multi-line comment blocks (`/* ... */`)
* Ignoring string literals (`"ignore this { brace"`)
* Giving an instant status report before you run `mka bacon`.

---

### 🚀 Installation (For Beginners)

The best way to use this script is to keep it in your Home folder and make it accessible from anywhere in the system.

#### 1. Download and Move
Open your terminal and run these commands:
```bash
# Clone the repository
git clone [https://github.com/Vuhased/brace-hunter.git](https://github.com/Vuhased/brace-hunter.git)

# Move to the script folder
cd brace-hunter

# Give the script permission to run
chmod +x brace-hunter.sh

# Move it to a system-wide folder so you can run it anywhere
sudo cp brace-hunter.sh /usr/local/bin/brace-hunter

2. How to use
Now you can run the script from any folder in your terminal by simply typing its name:
brace-hunter path/to/your/File.java

📝 Usage Examples

Scenario A: Everything is perfect If your code is clean and all braces are closed, you will see a green success message:

    Open braces { : 452

    Close braces } : 452

    ✅ BALANCE OK

Scenario B: You missed a bracket If you accidentally deleted a brace or commented it out, Brace-Hunter will catch it instantly:

    ❌ BALANCE ERROR!

    You need to add closing braces ( } ): 1

    Tip: Check your recent changes or /* ... */ comment blocks.

💡 Key Features

    Smart Filtering: The script is intelligent enough to ignore braces inside quotes (like "{") and skip all types of comments, so you don't get false alarms.

    System-Wide Access: By following the installation steps, the tool becomes a permanent part of your Ubuntu system, just like ls or grep.

    Universal Support: Perfect for Java, C, C++, Rust, Kotlin, and even JavaScript.

🤝 Contributing & Support

This tool was created by Vuhased to help fellow "creators" and independent developers avoid the nightmare of waiting for a build to fail.

    Found a bug? Open an Issue on GitHub.

    Have an improvement? Feel free to submit a Pull Request.
