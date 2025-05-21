## ✅ Zaktualizowany spis tokenów

### Keywords and Tokens

| Token        | Python Equivalent  | Category               | Used |
|--------------|--------------------|------------------------|--------|
| `variablo`   | variable           | Variable declaration   | ✅     |
| `se`         | if                 | Conditional            | ✅     |
| `gis`        | while              | Loop                   | ✅     |
| `por`        | for                | Loop                   | ✅     |
| `por ciu`    | for each           | Loop for lists         | ✅     |
| `en`         | in                 | Membership operator    | ✅     |
| `alie`       | else               | Conditional            | ✅     |
| `alie se`    | elif               | Conditional            | ✅     |
| `kaj`        | and                | Logical operator       | ✅     |
| `au`         | or                 | Logical operator       | ✅     |
| `haltu`      | break              | Loop control           | ✅     |
| `daurigi`    | continue           | Loop control           | ✅     |
| `difini`     | def                | Function definition    | ✅     |
| `forigi`     | delete             | Deletion               | ✅     |
| `provu`      | try                | Exception handling     |        |
| `krom`       | except             | Exception handling     |        |
| `malvero`    | false              | Boolean literal        | ✅     |
| `vere`       | true               | Boolean literal        | ✅     |
| `finfine`    | finally            | Exception handling     |        |
| `klaso`      | class              | Class definition       |        |
| `tutmonda`   | global             | Scope modifier         | ✅     |
| `estas`      | is                 | Identity operator      |        |
| `funkcio`    | funkcja            | Function definition    | ✅     |
| `nenio`      | none               | Null literal           |        |
| `ne`         | not                | Logical negation       | ✅     |
| `reveni`     | return             | Return statement       | ✅     |
| `slosiloj`   | .keys()            | Gets dictionary keys   | ✅     |
| `valoroj`    | .values()          | Gets dictionary values | ✅     |
| `Saluton`    | (start of program) | Program entry point    | ✅     |
| `Adiau`      | (end of program)   | Program termination    | ✅     |

---

### Arithmetic Operators

| Token        | Python Equivalent | Operation         | Used |
|--------------|-------------------|-------------------|--------|
| `aldoni`     | `+`               | Addition          | ✅     |
| `subtrahi`   | `-`               | Subtraction       | ✅     |
| `multigi`    | `*`               | Multiplication    | ✅     |
| `dividi`     | `/`               | Division          | ✅     |
| `modulo`     | `%`               | Modulo            | ✅     |
| `intensigi`  | `**`              | Exponentiation    | ✅     |

---

### Comparison and Assignment Operators

| Token              | Python Equivalent | Operation              | Used |
|--------------------|-------------------|------------------------|--------|
| `asigini`          | `=`               | Assignment             | ✅     |
| `egala`            | `==`              | Equality               | ✅     |
| `ne egala`         | `!=`              | Inequality             | ✅     |
| `granda`           | `>`               | Greater than           | ✅     |
| `malgranda`        | `<`               | Less than              | ✅     |
| `granda egala`     | `>=`              | Greater than or equal  | ✅     |
| `malgranda egala`  | `<=`              | Less than or equal     | ✅     |

---

### Structural Symbols

| Symbol   | Meaning              | Category               | Used |
|----------|----------------------|------------------------|--------|
| `(`      | left_parenthesis     | Grouping               | ✅     |
| `)`      | right_parenthesis    | Grouping               | ✅     |
| `{`      | left_brace           | Block start            | ✅     |
| `}`      | right_brace          | Block end              | ✅     |
| `[`      | left_bracket         | Indexing/list start    | ✅     |
| `]`      | right_bracket        | Indexing/list end      | ✅     |
| `,`      | comma                | Separator              | ✅     |
| `:`      | colon                | ForEach condition sep  | ✅     |
| `;`      | semicolon            | ForLoop condition sep  | ✅     |
| `:O...`  | comment_symbol       | Comment                | ✅     |
| `:P...P:`| commentblock_symbols | Comment Block          | ✅     |

---

### Data Types

| Token     | Python Equivalent | Type        | Used |
|-----------|-------------------|-------------|--------|
| `entjero` | int               | Integer     | ✅     |
| `flosi`   | float             | Float       | ✅     |
| `snuro`   | str               | String      | ✅     |
| `listo`   | list              | Lista       | ✅     |
| `vortaro' | dictionary        | Słownik     | ✅     |

### Lexer Tokens – Literals & Structure

| Token          | Definition                           | Type                      | Opis / Uwagi                            |
|----------------|--------------------------------------|---------------------------|-----------------------------------------|
| `INT`          | `[0-9]+`                             | Integer literal           | Całkowite liczby dodatnie               |
| `FLOAT`        | `[0-9]+ '.' [0-9]+`                  | Float literal             | Liczby zmiennoprzecinkowe               |
| `STRING`       | `"\""` (ESC \| ~["\\\r\n])* `"\""`   | String literal            | Ciągi znaków w cudzysłowie              |
| `NAME`         | `[a-zA-Z][a-zA-Z0-9]*`               | Identifier                | Nazwy zmiennych, funkcji itp.           |
| `ESC`          | `'\\' ["\\/bfnrt]`                   | Escape sequence (fragment)| Używane wewnątrz STRING jako fragment   |
| `COMMENT`      | `:O` ~[\r\n]*                        | Line comment              | Komentarz do końca linii – pomijany     |
| `COMMENTBLOCK` | `:P` ~[P:]* `P:`                     | Block comment             | Komentarz blokowy – pomijany            |
| `WS`           | `[ \t\r\n]+`                         | Whitespace                | Pomijane białe znaki                    |
| `NL`           | `'\r'? '\n'`                         | New line (line break)     | Przełamanie linii (jeśli nie ignorowane)|
