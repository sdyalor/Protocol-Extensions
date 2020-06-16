protocol ColorChangeable {
  func changeColor()
}
extension ColorChangeable {
  func changeColor(){
    print("changing to white")
  }
}

protocol TextClearable {
  func clearText()
}
extension TextClearable {
  func clearText() {
    print("clearing text")
  }
}

protocol ColorAndTextUpdatable: ColorChangeable, TextClearable {}

class MyButton: ColorAndTextUpdatable {
  func changeColor() {
    print("changing to BLACK")
  }
}
struct MyLabel {
}
extension MyLabel: ColorAndTextUpdatable{
  func changeColor() {
    print("changing to RED")
  }
  func clearText() {
    print("clearing last letter")
  }
}

class MyView: ColorChangeable {
}

let myButton = MyButton()
myButton.changeColor()
myButton.clearText()
let myLabel = MyLabel()
myLabel.changeColor()
myLabel.clearText()
let myView = MyView()
myView.changeColor()
