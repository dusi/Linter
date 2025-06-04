import Danger
import Foundation

let danger = Danger()

print("🟡 Start")

SwiftLint.lint(inline: true) 

print("🟢 Done")