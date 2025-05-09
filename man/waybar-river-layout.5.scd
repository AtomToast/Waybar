waybar-river-layout(5)

# NAME

waybar - river layout module

# DESCRIPTION

The *layout* module displays the current layout in river.

It may not be set until a layout is first applied.

# CONFIGURATION

Addressed by *river/layout*

*format*: ++
	typeof: string ++
	default: {layout} ++
	The format, how information should be displayed. On {} data gets inserted.

*format-icons*: ++
	typeof: array ++
	Based on the current layout, the corresponding icon gets selected.

*rotate*: ++
	typeof: integer ++
	Positive value to rotate the text label (in 90 degree increments).

*max-length*: ++
	typeof: integer ++
	The maximum length in character the module should display.

*min-length*: ++
	typeof: integer ++
	The minimum length in characters the module should accept.

*align*: ++
	typeof: float ++
	The alignment of the label within the module, where 0 is left-aligned and 1 is right-aligned. If the module is rotated, it will follow the flow of the text.

*justify*: ++
	typeof: string ++
	The alignment of the text within the module's label, allowing options 'left', 'right', or 'center' to define the positioning.

*on-click*: ++
	typeof: string ++
	Command to execute when clicked on the module.

*on-click-middle*: ++
	typeof: string ++
	Command to execute when middle-clicked on the module using mousewheel.

*on-click-right*: ++
	typeof: string ++
	Command to execute when you right-click on the module.

*menu*: ++
	typeof: string ++
	Action that popups the menu.

*menu-file*: ++
	typeof: string ++
	Location of the menu descriptor file. There need to be an element of type
	GtkMenu with id *menu*

*menu-actions*: ++
	typeof: array ++
	The actions corresponding to the buttons of the menu.

*expand*: ++
	typeof: bool ++
	default: false ++
	Enables this module to consume all left over space dynamically.

# FORMAT REPLACEMENTS

*{layout}*: Layout, as defined by your layout generator. By default this will be *rivertile(1)*

*{icon}*: Icon, as defined in *format-icons*

# EXAMPLES

With layout name:

```
"river/layout": {
	"format": "{layout}",
	"min-length": 4,
	"align": "right"
}
```

With icons, this sets icons for the 4 layouts available in rivertile:

```
"river/layout": {
	"format": "{icon}",
	"min-length": 3,
	"format-icons": {
		"left": "[]=",
		"bottom": "TTT",
		"top": "ꓕꓕꓕ",
		"right": "=[]",
	}
}
```

# STYLE

- *#layout*
- *#layout.focused* Applied when the output this module's bar belongs to is focused.

# SEE ALSO

waybar(5), river(1), rivertile(1)
