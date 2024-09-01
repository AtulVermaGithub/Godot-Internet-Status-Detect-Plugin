---

# ![](icon.png?raw=true) Godot Internet Status Detect Plugin

This plugin adds functionality to detect intenet connection in Godot apps. It just checks if device intenet is on or not.

- For your infomrmation, this plugin only checks if Internet is on or not and do not wait for any server reply tatus.

## ![](icon.png?raw=true) Installation

- ### ![](icon.png?raw=true) Installing manually
  Steps:
  - download release archive from Github
  - unzip the release archive
  - create a new folder in your main Godot project
  - rename folder to "addons"
  - copy unzipped folder to addons folder
  - enable the plugin via the `Plugins` tab of `Project->Project Settings...` menu, in the Godot Editor

## ![](icon.png?raw=true) How to use plugin

- Add `Godot Internet Status Detect` as a child node where you want to use.
- Reference that plugin node in your `script.`
- like: `@onready var internet: Node2D = $"your/node/path/in/tree"`

  ### ![](icon.png?raw=true) `Internet.status` method

  - First it will check for Internet connection by default via `func _ready(delta)` function when loading.
  - After that it will store the Status as `bool` in `status` variable.
  - You can access that variable with:

  ```
  func _process(delta)
      var status = ("Internet Node reference").status
  ```

  - #### ![](icon.png?raw=true) Important
    - Make sure to access `.status` in `_process(delta)` function.

  ### ![](icon.png?raw=true) `Internet.get_status()` function

  - Returns `void`.
  - Updates current status and stores in above `status` variable.
  - You can use this function in any trigger like `on_button_pressed()` to update status
## ![](icon.png?raw=true) Signals
There are two signals `has_internet` and `no_internet`, emitted when internet is active and internet is not active respectively.
![image](https://github.com/user-attachments/assets/a180a317-369a-42fa-a166-d9153e7e55d7)

## ![](icon.png?raw=true) Usage/Examples

```python

@onready var internet: Node2D = $"Internet"
#reference Internet node

var status: bool

func _process(delta: float) -> void:
	status = internet.status


#Check internet status on button press
func on_button_pressed():
    internet.get_status()
```

## ![](icon.png?raw=true) Credits

- ### ![](icon.png?raw=true) Plugin Logo: ![](Godot-Internet-Status-Detect-Plugin/internet_status_detect/icon.png?raw=true)
  - [Internet Icon PNGs by Vecteezy](https://www.vecteezy.com/free-png/internet-icon)

## ![](icon.png?raw=true) License

[MIT](https://github.com/AtulVermaGithub/Godot-Internet-Status-Detect-Plugin?tab=MIT-1-ov-file)
