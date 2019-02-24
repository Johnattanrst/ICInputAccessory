Pod::Spec.new do |s|
  s.name          = "ICInputAccessory"
  s.version       = "2.0.1"
  s.summary       = "A customized token text field used in the iCook app."
  s.description   = <<-DESC
                     KeyboardDismissTextField:
                     * An input accessory view with a button to dismiss keyboard.

                     TokenField:
                     * A horizontal scrolling UI that groups input texts.
                     * Easy to add, select and delete tokens.
                     * Customizable icon and colors.
                     * Supports storyboard.

                     OptionPickerControl:
                     * An easy to use UIControl that displays a UIPickerView with given options.
                    DESC

  s.screenshots   = "https://raw.githubusercontent.com/polydice/ICInputAccessory/master/screenshots/ICTokenField.png",
                    "https://raw.githubusercontent.com/polydice/ICInputAccessory/master/screenshots/ICKeyboardDismissTextField.png"
  s.homepage      = "https://github.com/polydice/ICInputAccessory"
  s.license       = { type: "MIT", file: "LICENSE" }
  s.authors       = "bcylin", "trisix"
  s.platform      = :ios, "8.0"
  s.swift_version = "4.0"
  s.source        = { git: "https://github.com/polydice/ICInputAccessory.git", tag: "v#{s.version}" }
  s.requires_arc  = true

  s.default_subspecs = "KeyboardDismissTextField", "OptionPickerControl", "TokenField"

  s.subspec "KeyboardDismissTextField" do |sp|
    sp.source_files  = "Source/KeyboardDismissTextField/*.swift"
    sp.resources     = "Source/KeyboardDismissTextField/*.xcassets"
  end

  s.subspec "OptionPickerControl" do |sp|
    sp.source_files  = "Source/OptionPickerControl/*.swift"
  end

  s.subspec "TokenField" do |sp|
    sp.source_files  = "Source/TokenField/*.swift"
  end
end
