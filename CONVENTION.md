# XRALS Code Conventions

This document defines the code style conventions for Nushell scripts in this project.

The goal is to ensure consistency, readability, and maintainability across codebase,
regardless of who writes it.

## Indentation

* Use 4 spaces for indentation. **DO NOT** use tabs.

## Variables & Functions Naming

* Use `snake_case` for all names (variables, functions, parameters).
* Names should be descriptive. Avoid one-letter names unless in very small scope (e.g. loops).
* Example: `package_name`, `package_version`

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

* Place 1 space before and after the square brackets ([ ]) in function parameter declarations.
* Use meaningful parameter names.
* Always place a comment above the function describing what it does.
* Example:

```nushell
# Returns the number of lines in a file

def count_lines [file: string] {
    open $file | lines | length
}
```

## Blank Lines

* Use blank lines to separate logical sections of the script or pipeline stages.

## File Naming

* Script filenames must use **dash-separated-lowercase** (not underscore).
* Example: `xrals-cache.nu`, `xrals-init.nu`
* Exception: Variables and function names still use `snake_case`.

## Constants

* Constant names must use `ALL_CAPS` and `snake_case`.
* Example:

```nushell
const CHECK_HASH = true
const MAX_SIZE = 10
```
