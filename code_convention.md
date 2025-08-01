# CODE STYLE GUIDE

## Indentation

* Use 2 spaces for indentation. Do not use tabs.

## Naming (Variables & Functions)

* Use snake_case for all names (variables, functions, parameters).
* Names should be descriptive. Avoid one-letter names unless in very small scope (e.g. loops).
* Example: `input_file`, `get_user_data`

## Line Length

* Limit all lines to 100 characters maximum.
* Break long pipelines into multiple lines using backslash ().

## Comments

* Use `#` for comments.
* Place comments above the code they describe.
* Comments should be clear, written in English, and start with a capital letter.
* Avoid full sentences unless necessary.
* Example:

```nushell
  # Extracts all filenames from the current directory

  ls | get name
```

## Functions

* Define functions using `def` or `def-env`.
* Use meaningful parameter names.
* Always place a comment above the function describing what it does.
* Example:

```nushell
  # Returns the number of lines in a file

  def count\_lines \[file: string] {
  open \$file | lines | length
  }
```

## Blank Lines

* Use blank lines to separate logical sections of the script or pipeline stages.

## File Naming

* Script filenames must use **dash-separated-lowercase** (not underscore).
* Example: `process-data.nu`, `init-env.nu`
* Exception: Variables and function names still use `snake_case`.

## Module Structure

* Group related functions into one file.
* Use `use` or `source` to import functions.
* Always place `source` or `use` at the top of the file.
* Example:

```nushell
    use utils.nu count_lines
```

## Constants

* Simulate constants using `let` at the top of the file.
* Example:

```nushell
  let api_url = "[https://example.com](https://example.com)"
```
