import Danger
import Foundation

let danger = Danger()

let changedFiles = danger.git.modifiedFiles + danger.git.createdFiles

SwiftLint.lint(
    .files(changedFiles),
    inline: true
) 
