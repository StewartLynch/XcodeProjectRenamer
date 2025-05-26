# XcodeProjectRenamer

[![Homebrew](https://img.shields.io/badge/install%20with-homebrew-29aadb.svg?logo=homebrew)](https://github.com/StewartLynch/homebrew-tap/blob/main/Formula/xprename.rb)

 XcodeProjectRenamer is a script Created by **Marko Tadic**

Original **Github repository**: https://github.com/tadija/xcode-project-renamer

The scrip goes through all the files and directories recursively, including Xcode project or workspace file and replaces all occurrences of **$OLD_PROJECT_NAME** string with **$NEW_PROJECT_NAME** string (both in each file's name and content).

I have repackaged this, with permission as a  Swift-based command-line tool.

The tool is packaged as `xprename`, and can be installed via Homebrew or built locally.

---

## 🚀 What Does It Do?

Renaming an Xcode project isn't just renaming a folder — it often involves:

- Renaming the `.xcodeproj` file  
- Renaming the `.xcworkspace` file (if present)  
- Renaming scheme names  
- Renaming directory names  
- Updating internal references to the old name in:
  - `project.pbxproj`
  - `workspace` data files
  - `.swift` or `.plist` files (if desired)

`xprename` automates all of this safely and quickly in a single command.

---

## 📦 Option 1: Installation via Homebrew

You can install the command-line tool using Homebrew:

```bash
brew install stewartlynch/tap/xprename
```

## 🛠 Option 2: Manual Build & Install locally via SwiftPM

If you prefer to build it yourself, you can clone the repo and install the tool manually using Swift Package Manager.

### Clone the Repository

```bash
git clone https://github.com/StewartLynch/XcodeProjectRenamer.git
cd XcodeProjectRenamer
```

### Build with SwiftPM

```bash
swift build -c release
sudo cp .build/release/xprename /usr/local/bin/
```

## 🧪 How to use
Once installed:
1. Open Terminal
2. Change the directory to your project directory
3. Issue the following command:
```bash
xprename MyOldAppName MyNewAppName
```

This will:
- Rename all references of `MyOldAppName` to `MyNewAppName`
- Rename `.xcodeproj` and `.xcworkspace` files
- Update folder names and scheme names accordingly

### Other commands

##### version

To display the current version

```bash
xprename --version
```

##### help

To show help information

```bash
xprename -h
```

## License

This code is released under the MIT license. See [LICENSE](LICENSE) for details.
