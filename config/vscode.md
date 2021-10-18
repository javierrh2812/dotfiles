### Extensions

- Live Share
- Atome One Dark Theme
- Dracula Official
- Material Icon Theme
- Prettier
- Bracket pair colorizer
- DotENV
- es7 react snippets
- ESlint

Fonts: Fira Code iScript, Fira Code

##### Settings.json

```json
{
  "editor.fontFamily": "Fira Code iScript",
  "editor.fontLigatures": true,
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "name": "comment",
        "scope": ["comment"],
        "settings": {}
      },
      {
        "name": "Keyword Storage",
        "scope": ["keyword", "keyword.control"],
        "settings": {
          "fontStyle": "italic"
        }
      },
      {
        "name": "Variable",
        "scope": ["variable.parameter.js", "meta.parameters.js"],
        "settings": {
          "fontStyle": "italic"
        }
      },
      {
        "name": "Entity",
        "scope": ["entity.other.attribute-name.js", "entity.name.method.js"],
        "settings": {
          "fontStyle": "italic"
        }
      }
    ]
  }
}
```
