# Multipull

This PowerShell script can be used to load all env vars from a env file.

# Installation

1. Open your PowerShell profile with `notepad $PROFILE` (or with your favorite editor)
2. Paste the code into your profile file and save it
3. Restart your PowerShell
4. Now you should be able to use the command `loadenv`

# How to use it

## Syntax:

```pwsh
loadenv -envFilePath <file path>
```

**Note:** `-envFilePath` is not mandatory to type. So you could also type:

```pwsh
loadenv <file path>
```

## Example

Let's assume you have a `.env.list` file like this:

```
PASSWORD=SECRET_PASS_VALUE
USER=USER_NAME
MAIL=E_MAIL_ADDRESS
```

**NOTE**: The file can be named anything (doesn't have to be a `.env.list` file) but the values have to be seperated by a paragraph (`\n`).

```pwsh
loadenv .env.list
```

&rarr; This will load all the variables from the `.env.list` file into the current PowerShell session
