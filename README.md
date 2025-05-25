# XcodeProjectRenamer

[![Homebrew](https://img.shields.io/badge/install%20with-homebrew-29aadb.svg?logo=homebrew)](https://github.com/StewartLynch/homebrew-tap/blob/main/Formula/xprename.rb)

 XcodeProjectRenamer is a script Created by Marko Tadic on 8/1/16.

Copyright © 2016 appculture. All rights reserved.

I have just made an executable command line tool to make it easy to install and use.



A Swift-based command-line tool to **rename an Xcode project** throughout its folder structure — including `.xcodeproj`, `.xcworkspace`, schemes, folders, and internal references.

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

## 📦 Installation (via Homebrew)

You can install the command-line tool using Homebrew:

```bash
brew tap stewartlynch/tap
brew install xprename
```

Once installed, run the tool from the root of your project:

```bash
xprename OldProjectName NewProjectName
```

---

## 🛠 Manual Build & Install (Locally via SwiftPM)

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

Now you can run:

```bash
xprename OldProjectName NewProjectName
```

---

## 🧪 Example

```bash
xprename MyOldAppName MyNewAppName
```

This will:
- Rename all references of `MyOldAppName` to `MyNewAppName`
- Rename `.xcodeproj` and `.xcworkspace` files
- Update folder names and scheme names accordingly

---

## 🧾 License

MIT License — © Stewart Lynch