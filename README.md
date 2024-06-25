# OpenLuauIDE
A fully open-source module for Roblox, which allows for the creation of an IDE on any Frame. This was created almost entirely in one sitting and I'm not willing to update this.
<br><br>
You can submit a pull request or fork the repo, if you find any issues.

# Getting Started
Either build the Module by running `argon build`, or grab a copy of it from the Releases & put the module anywhere you'd like.

## API

**Functions:**

```Lua
function IDE:CaptureFocus(): ()
```
Captures focus on the IDE, allowing for user input.

```Lua
function IDE:ReleaseFocus(): ()
```
Releases focus from the IDE, stopping user input.

```Lua
function IDE:Destroy(): ()
```
Destroys the IDE instance, cleaning up all connections and resources.

**Constructor:**

```Lua
function IDEModule.new(frame: Frame): IDE
```
Creates a new IDE instance on the given frame.

**Types:**

```Lua
type IDE = {
    Content: string,
    CursorPosition: number,
    FontSize: number,
    ContentChanged: RBXScriptSignal | readonly,
    IsFocused: boolean | readonly,

    LineNumbersVisible: boolean,
    HighlightCurrentLine: boolean,

    CaptureFocus: (self: IDE) -> () | readonly,
    ReleaseFocus: (self: IDE) -> () | readonly,
    Destroy: (self: IDE) -> () | readonly,
}

type IDEModule = {
    new: (frame: Frame) -> (IDE)
}
```

## Example

```Lua
local IDEModule = require(path.to.IDEModule)

-- Create a new IDE on a Frame
local ide = IDEModule.new(myFrame)

-- Capture focus on the IDE
ide:CaptureFocus()

-- Set the content of the IDE
ide.Content = "print('Hello, world!')"

-- Release focus from the IDE
ide:ReleaseFocus()

-- Destroy the IDE when done
ide:Destroy()
```

# Credits
Written by [paradoxxicality/dumpstring](https://github.com/paradoxxicality).<br>
[Highlighter](https://github.com/boatbomber/Highlighter) module written by boatbomber.
