# A Simple Recipe Template for Pandoc

This is a super simple recipe template for rendering recipes in YAML format.

I got tired of my recipes folder being a mess of different file formats and recipe formats, so I created this to try and make everything uniform.

# Examples

There are examples for both the input YAML files and the resulting PDFs in the example folder.

# Using

## Input format

This input format is _loosely_ based on the [Open Recipe Format](https://github.com/techhat/openrecipeformat), but modified to be simpler and easier create from existing recipe formats. I have included a few examples that I hope do a better job explaining than I ever could in this document.

### Required Fields

- `recipe_name`: The title of the recipe
- `categories`: A list of the categories for the recipe, there must be at least one of these
- `ingredients` or `ingredients_split`: Either a list, for `ingredients` or a map of lists for `ingredients_split`.
  `ingredients_split` allows you to split your ingredients into sections, for example for the crust, filling and topping of a pie.
- `steps` or `steps_split`: The same as for ingredients except for the steps (method). You may have split steps without split ingredients or vice versa.

### Optional Fields

- `oven_temp`: A map containing `amount` (which is for the temperature) and `unit`, which should generally either be C or F
- `times`: A list of maps which have `name`, which is what to call the time (eg, Oven Time, Prep time, Cook Time) and `amount` which is the length of time (eg 1 hour, 45 minutes or 1 1/2 hours)
- `yields`: The number of servings etc from the recipe (eg 4 dozen cookies, 8 servings, 6 portions)
- `notes`: Things that the cook should know about making the recipe. This can be any text, and markdown within this will be rendered.
- `source`: Where you got the recipe. Can be a URL, a cookbook title and page, someone's name or really anything else!

## Compiling

In order to compile the recipes you need to have [Pandoc](https://pandoc.org/), XeLaTex and make. Simply create a folder called `yaml` in the same folder as the makefile, then place all your recipes in there. When you run `make` all the recipes will be compiled into a folder called `pdf`.

# Known issues

The yaml input files cannot have spaces in their names. This is a result of using `make`. I'm sorry.

# Contributing

If you have an idea on how you think you can make this better, feel free to fork the repository and make changes.
I'm also open to pull requests either to improve my template, or add additional templates.

# License

See the LICENSE file.
