import Danger
import Foundation

let danger = Danger()

let changedFiles = danger.git.modifiedFiles + danger.git.createdFiles

if changedFiles.count - danger.git.deletedFiles.count > 300 {
    warn("BIG PR - Try to keep changes smaller if you can")
}

SwiftLint.lint(
    .files(changedFiles),
    inline: true,
    strict: true
) 
