# esx_annoncenews
 > [EN] Allows you to place scaleform ads using an item

 > [FR] Permet de passer des annonces scaleform en utilisant un item

[![TITRE](https://i.imgur.com/2cRL6rt.png)]()
---
## ⚡ Installation 

How to get started with the script

### Download

- You can clone this repo to your local machine using :
```
cd resources 
git clone https://github.com/BBlutin/esx_annoncenews.git
```

- Or you can download it manually :

  - Download https://github.com/BBlutin/esx_annoncenews/archive/master.zip
  - Put it in the [esx] directory
  
### Import SQL & Start

- Import `annonce.sql` in your database
- Add this to your `server.cfg`:
```
ensure bblutin_annonces
```

---

## 📺 Preview

[![Aperçu](https://i.imgur.com/J61FTCv.png)](https://streamable.com/8oc6o8)

---

## 📋 Structure

### 📂 bblutin_annonces

- **📂 src**

  - 📄 client.lua
  - 📄 server.lua

- **📂 sql**

  - 📄 annonce.sql

- 📄 __resource.lua

- 📄 config.lua

---

## 🔰 License

Copyright (C) 2020 BBlutin

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
