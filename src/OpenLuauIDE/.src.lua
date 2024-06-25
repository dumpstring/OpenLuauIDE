--[[

                 [OpenLuauIDE]
    A fully open-source module for Roblox,
    which allows for the creation of an IDE
    on any Frame.

    Written by paradoxxicality/dumpstring.
    Highlighter module written by boatbomber.
    
]]

-- Utility Stuff
local util = {}

function util:GetContentBase() -- Code generated using codify.
	local iDEContent = Instance.new("TextButton")
	iDEContent.Name = "IDEContent"
	iDEContent.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	iDEContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
	iDEContent.BorderSizePixel = 0
	iDEContent.Text = ""
	iDEContent.AutoButtonColor = false
	iDEContent.Active = false
	iDEContent.Size = UDim2.fromScale(1, 1)

	local lineNumberHolder = Instance.new("ScrollingFrame")
	lineNumberHolder.Name = "LineNumberHolder"
	lineNumberHolder.AutomaticCanvasSize = Enum.AutomaticSize.Y
	lineNumberHolder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	lineNumberHolder.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	lineNumberHolder.ScrollBarThickness = 0
	lineNumberHolder.ScrollingDirection = Enum.ScrollingDirection.Y
	lineNumberHolder.ScrollingEnabled = false
	lineNumberHolder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	lineNumberHolder.Active = true
	lineNumberHolder.AutomaticSize = Enum.AutomaticSize.X
	lineNumberHolder.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	lineNumberHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	lineNumberHolder.BorderSizePixel = 0
	lineNumberHolder.Size = UDim2.fromScale(0, 1)

	local uIPadding = Instance.new("UIPadding")
	uIPadding.Name = "UIPadding"
	uIPadding.PaddingLeft = UDim.new(0, 8)
	uIPadding.PaddingRight = UDim.new(0, 8)
	uIPadding.PaddingTop = UDim.new(0, 8)
	uIPadding.PaddingBottom = UDim.new(1, -14)
	uIPadding.Parent = lineNumberHolder

	local uIListLayout = Instance.new("UIListLayout")
	uIListLayout.Name = "UIListLayout"
	uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout.Parent = lineNumberHolder

	lineNumberHolder.Parent = iDEContent

	local uIListLayout1 = Instance.new("UIListLayout")
	uIListLayout1.Name = "UIListLayout"
	uIListLayout1.ItemLineAlignment = Enum.ItemLineAlignment.Center
	uIListLayout1.FillDirection = Enum.FillDirection.Horizontal
	uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
	uIListLayout1.Parent = iDEContent

	local codeHolder = Instance.new("ScrollingFrame")
	codeHolder.Name = "CodeHolder"
	codeHolder.AutomaticCanvasSize = Enum.AutomaticSize.XY
	codeHolder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	codeHolder.CanvasSize = UDim2.fromScale(0, 1.1)
	codeHolder.ScrollBarImageColor3 = Color3.fromRGB(70, 70, 70)
	codeHolder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	codeHolder.Active = true
	codeHolder.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	codeHolder.BackgroundTransparency = 1
	codeHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	codeHolder.BorderMode = Enum.BorderMode.Inset
	codeHolder.BorderSizePixel = 0
	codeHolder.Size = UDim2.fromScale(1, 1)

	local uIPadding1 = Instance.new("UIPadding")
	uIPadding1.Name = "UIPadding"
	uIPadding1.PaddingLeft = UDim.new(0, 8)
	uIPadding1.PaddingRight = UDim.new(0, 8)
	uIPadding1.PaddingTop = UDim.new(0, 8)
	uIPadding1.PaddingBottom = UDim.new(1, -14)
	uIPadding1.Parent = codeHolder

	local holder = Instance.new("Frame")
	holder.Name = "Holder"
	holder.AutomaticSize = Enum.AutomaticSize.XY
	holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	holder.BackgroundTransparency = 1
	holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	holder.BorderSizePixel = 0

	local input = Instance.new("TextBox")
	input.Name = "Input"
	input.ClearTextOnFocus = false
	input.CursorPosition = -1
	input.FontFace = Font.fromEnum(Enum.Font.Code)
	input.MultiLine = true
	input.Text = ""
	input.TextColor3 = Color3.fromRGB(102, 102, 102)
	input.TextSize = 14
	input.TextXAlignment = Enum.TextXAlignment.Left
	input.TextYAlignment = Enum.TextYAlignment.Top
	input.AutomaticSize = Enum.AutomaticSize.XY
	input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	input.BackgroundTransparency = 1
	input.BorderColor3 = Color3.fromRGB(0, 0, 0)
	input.Size = UDim2.new(1, 0, 1, 0)
	input.BorderSizePixel = 0

	local text = Instance.new("TextLabel")
	text.Name = "HighlightText"
	text.FontFace = Font.fromEnum(Enum.Font.Code)
	text.Text = ""
	text.TextColor3 = Color3.fromRGB(102, 102, 102)
	text.TextSize = 14
	text.TextTransparency = 1
	text.TextXAlignment = Enum.TextXAlignment.Left
	text.TextYAlignment = Enum.TextYAlignment.Top
	text.Active = true
	text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	text.BackgroundTransparency = 1
	text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	text.BorderSizePixel = 0
	text.Selectable = true
	text.Size = UDim2.fromScale(1, 1)
	text.Parent = input

	local lineTemplate = Instance.new("TextLabel")
	lineTemplate.Name = "LineTemplate"
	lineTemplate.FontFace = Font.fromEnum(Enum.Font.Code)
	lineTemplate.Text = ""
	lineTemplate.TextColor3 = Color3.fromRGB(204, 204, 204)
	lineTemplate.TextSize = 14
	lineTemplate.AutomaticSize = Enum.AutomaticSize.X
	lineTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	lineTemplate.BackgroundTransparency = 1
	lineTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
	lineTemplate.BorderSizePixel = 0
	lineTemplate.Size = UDim2.fromOffset(0, 14)
	lineTemplate.Visible = false
	lineTemplate.Parent = lineNumberHolder

	local lineHighlightFrame = Instance.new("Frame")
	lineHighlightFrame.Name = "LineHighlightFrame"
	lineHighlightFrame.BackgroundColor3 = Color3.fromRGB(45, 50, 65)
	lineHighlightFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	lineHighlightFrame.BorderSizePixel = 0
	lineHighlightFrame.Position = UDim2.fromOffset(-4, 0)
	lineHighlightFrame.Size = UDim2.new(1, 8, 0, 14)
	lineHighlightFrame.ZIndex = 0
	lineHighlightFrame.Parent = codeHolder

	input.Parent = holder

	holder.Parent = codeHolder

	codeHolder.Parent = iDEContent

	-- Handle some stuff here.
	lineNumberHolder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		local width = lineNumberHolder.AbsoluteSize.X
		codeHolder.Size = UDim2.new(1, -width, 1, 0)
	end)

	return iDEContent
end

-- Luau Types
type readonly = {}
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

-- The Actual Code
local UIS = game:GetService("UserInputService")
local HighlighterModule = require(script.Highlighter)
local IDEModule = {}

local IDE = {} -- The actual IDE class.
IDE.__index = IDE

function IDE:CaptureFocus()
	self.content.CodeHolder.Holder.Input:CaptureFocus()
end

function IDE:ReleaseFocus()
	self.content.CodeHolder.Holder.Input:ReleaseFocus()
end

function IDEModule.new(frame: Frame): IDE
	assert(frame, "missing argument #1 to 'new' (Frame expected)")

	local content = util:GetContentBase()
	local codeHolder = content.CodeHolder
	local lineHighlightFrame = codeHolder.LineHighlightFrame
	local lineNumberHolder = content.LineNumberHolder
	local lineNumberTemplate = lineNumberHolder.LineTemplate
	local input : TextBox= codeHolder.Holder.Input
	local highlighttext = input.HighlightText
	
	local self = {
		content = content,
	}

	local changed = Instance.new("BindableEvent")

	local props = {}
	props.Content = ""
	props.CursorPosition = 1
	props.FontSize = 14
	props.ContentChanged = changed.Event
	props.LineNumbersVisible = true
	props.HighlightCurrentLine = true

	local lastLine = 1

	local function getCurrentLine() -- devforum & lua docs my beloved: https://devforum.roblox.com/t/get-line-number-from-cursorposition/834924/2
		if UIS:GetFocusedTextBox() ~= input then
			return lastLine
		end
		local t = {} -- table to store the indices
		local i = 0
		while true do
			i = string.find(input.ContentText, "\n", i + 1) -- find 'next' newline
			if i == nil then
				break
			end
			table.insert(t, i)
		end
		for i2, v2 in pairs(t) do
			if v2 > input.CursorPosition - 1 then
				return i2
			end
		end
		lastLine = #t + 1
		return lastLine
	end

	local function updateLineHighlight()
		if not self.HighlightCurrentLine then
			return
		end

		local currentLine = getCurrentLine()
		local yOffset = (currentLine - 1) * self.FontSize
		lineHighlightFrame.Position = UDim2.fromOffset(-4, yOffset)
	end

	local function getLineCount()
		return #string.split(input.Text, "\n")
	end

	local function updateLineNumbers()
		if not self.LineNumbersVisible then
			return
		end

		local linecount = getLineCount()
		local line = getCurrentLine()
		local children = lineNumberHolder:GetChildren()
		local currentChildCount = #children - 3

		if currentChildCount > linecount then
			local deleteAmount = currentChildCount - linecount
			local deleted = 0

			table.sort(children, function(a, b)
				return (tonumber(a.Name) or 0) > (tonumber(b.Name) or 0)
			end)

			for _, v in ipairs(children) do
				if v:IsA("TextLabel") and (tonumber(v.Name) or 1) > linecount then
					v:Destroy()
					deleted = deleted + 1
					if deleted == deleteAmount then
						break
					end
				end
			end
		elseif currentChildCount < linecount then
			for i = currentChildCount + 1, linecount do
				local new = lineNumberTemplate:Clone()
				new.Name = tostring(i)
				new.Text = tostring(i)
				new.Visible = true
				new.Parent = lineNumberHolder
			end
		end

		for _, v in ipairs(children) do
			if v:IsA("TextLabel") then
				if tonumber(v.Name) == line then
					v.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold)
				else
					v.FontFace = Font.fromEnum(Enum.Font.Code)
				end
				v.TextSize = props.FontSize
				v.Size = UDim2.fromOffset(0, props.FontSize)
			end
		end
	end
	
	HighlighterModule.setTokenColors({
		background = Color3.new(0.145098, 0.145098, 0.145098),
		builtin = Color3.new(0.517647, 0.839216, 0.968628),
		comment = Color3.new(0.4, 0.4, 0.4),
		custom = Color3.new(1, 0.776471, 0),
		iden = Color3.new(0.8, 0.8, 0.8),
		keyword = Color3.new(0.972549, 0.427451, 0.486275),
		number = Color3.new(1, 0.776471, 0),
		operator = Color3.new(0.8, 0.8, 0.8),
		string = Color3.new(0.678431, 0.945098, 0.584314)
	})
	HighlighterModule.highlight({
		textObject = highlighttext
	})	

	input:GetPropertyChangedSignal("ContentText"):Connect(function()
		props.Content = input.ContentText
		highlighttext.Text = input.ContentText
		updateLineNumbers()
		changed:Fire()
	end)
	input:GetPropertyChangedSignal("CursorPosition"):Connect(function()
		task.wait()
		updateLineNumbers()
		updateLineHighlight()
	end)
	input:GetPropertyChangedSignal("TextSize"):Connect(function()
		local size = props.FontSize
		highlighttext.TextSize = size
		lineHighlightFrame.Size = UDim2.new(0, lineHighlightFrame.Size.X.Offset, 0, size)
		for _, entry: TextLabel in ipairs(lineNumberHolder:GetChildren()) do
			if entry:IsA("TextLabel") then
				entry.TextSize = size
			end
		end
	end)
	codeHolder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		codeHolder.UIPadding.PaddingBottom = UDim.new(0, codeHolder.AbsoluteSize.Y - input.AbsoluteSize.Y - 16 - props.FontSize*2)
		lineNumberHolder.UIPadding.PaddingBottom = UDim.new(0, codeHolder.AbsoluteSize.Y *2)
		lineHighlightFrame.Size = UDim2.new(0, input.AbsoluteSize.X + 4, 0, props.FontSize)
	end)
	content.MouseButton1Click:Connect(function()
		input:CaptureFocus()
	end)
	game:GetService("RunService").RenderStepped:Connect(function()
		local posY = codeHolder.CanvasPosition.Y
		lineNumberHolder.CanvasPosition = Vector2.new(lineNumberHolder.CanvasPosition.X, posY)
	end)

	content.Parent = frame

	local meta = setmetatable(self, {
		__index = function(self, index)
			if index == "IsFocused" then
				return UIS:GetFocusedTextBox() == input
			end
			return IDE[index] or props[index]
		end,
		__newindex = function(self, index, value)
			assert(
				index ~= "ContentChanged" and index ~= "CaptureFocus" and index ~= "ReleaseFocus" and index ~= "Destroy" and index ~= "IsFocused",
				`Unable to assign property {index}. Property is read only`
			)
			assert(props[index] ~= nil, `{index} is not a valid property of the IDE class.`)
			if typeof(value) ~= typeof(props[index]) then
				if typeof(value) == "number" and typeof(props[index]) == "string" then
					local newvalue = tostring(value)

					if index == "Content" then
						input.Text = newvalue
					end

					props[index] = newvalue
				else
					error(`Unable to assign property {index}. {typeof(props[index])} expected, got {typeof(value)}}`)
				end
			else
				if index == "FontSize" then
					input.TextSize = value
				end
				if index == "Content" then
					input.Text = value
				end
				if index == "LineNumbersVisible" then
					lineNumberHolder.Visible = value
					updateLineNumbers()
				end
				if index == "HighlightCurrentLine" then
					lineHighlightFrame.Visible = value
					updateLineHighlight()
				end
				if index == "CursorPosition" then
					input.CursorPosition = value
				end
				props[index] = value
			end
		end,
	})
	meta.Content = "  "
	meta.CursorPosition = 2
	meta.Content = ""
	return meta
end

return IDEModule
