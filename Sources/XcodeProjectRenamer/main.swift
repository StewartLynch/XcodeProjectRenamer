import Foundation
import ArgumentParser

struct RenameCommand: ParsableCommand {
    
    static let configuration = CommandConfiguration(
        commandName: "xprename",
        abstract: "Renames an Xcode project throughout the current folder.",
        version: "1.0.0"
    )

    @Argument(help: "The old Xcode project name.")
    var oldName: String

    @Argument(help: "The new Xcode project name.")
    var newName: String

    func run() throws {
        let xpr = XcodeProjectRenamer(oldName: oldName, newName: newName.replacingOccurrences(of: " ", with: ""))
        xpr.run()
    }
}

RenameCommand.main()
