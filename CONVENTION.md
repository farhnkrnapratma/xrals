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

* Place 1 space before and after the square brackets (\[ ]) in function parameter declarations.
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

## Commit Message Format

All commit messages must follow the `type: short description` format.

This ensures consistent and readable commit history, and makes it easier to generate changelogs or review logs.

### Structure

```
<type>: <short summary>

<optional longer description if needed>

Signed-off-by: Your Name <your@email.com>
```

* Use the `-s` flag with `git commit` to automatically generate the `Signed-off-by` line.
* First line must not exceed 72 characters.
* Write messages in **imperative form** (e.g., “Add”, not “Added”).

### Allowed Types

| Type        | Description                                     |
| ----------- | ----------------------------------------------- |
| `Add:`      | New feature or functionality                    |
| `Fix:`      | Bug fixes                                       |
| `Refactor:` | Code restructuring without behavior change      |
| `Remove:`   | Removing code, files, or features               |
| `Update:`   | Minor changes, such as text or formatting       |
| `Docs:`     | Documentation changes                           |
| `Test:`     | Adding or modifying tests                       |
| `Chore:`    | Maintenance tasks (e.g., dependencies, configs) |

### Example

```
Fix: prevent infinite loop in cache parser

Added a guard condition to break the loop when no new tokens
are found in input. Also improved error message clarity.

Signed-off-by: Farhan Kurnia Pratama <farhnkrnapratma@gmail.com>```
