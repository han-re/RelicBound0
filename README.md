# 🦸‍♂️ Relicbound
_An Avengers-inspired, choice-driven adventure game. Unlock your powers. Shape destiny._

![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS](https://img.shields.io/badge/CSS-1572B6?logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![MIT License](https://img.shields.io/badge/License-MIT-green)

## 💡 Overview

**Relicbound** is a web-based, interactive adventure where you step into the boots of a superhero embarking on a quest for ancient relics. Inspired by the Avengers, each playthrough lets you choose a unique superpower—invisibility, telekinesis, or super strength—which shapes your journey, tactics, and fate. Make choices, face story events, overcome challenges, and manage your lives—your decisions and powers directly affect your success.

All game progress, choices, and statistics are saved and loaded via an SQL database using PHP backend—enabling persistent gameplay and replay value.

## 🧩 Features

- **Choose Your Superpower:** Invisibility, Telekinesis, Super Strength—each influences story branches and outcomes.
- **Rich Storytelling:** Navigate missions, interact with kingdoms, face bosses, collect relics, and impact the fate of worlds.
- **Choice-Based Gameplay:** Your decisions yield victories or losses; wrong moves cost lives.
- **Inventory System:** Collect items and manage your gear, tracked and stored in the backend database.
- **Multiple Endings:** Branching paths based on your choices and powers.
- **Save & Resume:** Secure progress and stats with a robust PHP/MySQL save/load system.
- **Immersive UI:** Dynamic visual effects (e.g., black fade transitions), audio cues, themed graphics.
- **Replayability:** Each power alters challenges, leading to unique replay experiences.

## ⚙️ Tech Stack

- **Frontend:** 
  - HTML5 (core structure and UI)
  - CSS (styling, responsive themes, image effects, transitions)
  - JavaScript (game logic, user input, audio, DOM manipulation)
- **Backend:**
  - PHP (API endpoints for database interaction)
  - MySQL (stores progress, player stats, inventory)
- **Assets:** Custom images, GIFs, MP3 audio (see `/images` and `/audio` folders)

## 🚀 Installation & Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/han-re/RelicBound0.git
   cd RelicBound0
   ```

2. **Setup the Database**
   - Import `game_db.sql` (or equivalent schema) into your local MySQL instance:
     ```sql
     CREATE DATABASE game_db;
     -- Import table structures and initial data 
     -- (see inventoryTable, user_inventoryTable, user_progress, etc)
     ```
   - Update credentials in backend JS and PHP files (`hostname`, `username`, `password`, `database`) as required.

3. **Run the PHP Server**
   - Place files in your local PHP server root (e.g., `/var/www/html/RelicBound0`)
   - Start Apache (or equivalent):
     ```bash
     sudo service apache2 start
     ```

4. **Access Locally**
   - Navigate to `http://localhost/RelicBound0/relic2.html` (or index page)

5. **Enable JS & Cookies**
   - Ensure browser supports JavaScript and permits session/local storage.

## 🎮 How to Play

1. **Start the Game**
   - Open the main mission file (e.g., `relic2.html`).
   - Enter your player details, select your superpower.

2. **Make Choices**
   - At story junctures, pick your course via on-screen buttons.
   - Actions may succeed or fail depending on your power and strategy.

3. **Track Progress**
   - Lives decrease on failed choices; game ends when they reach zero.
   - Inventory and progress are displayed/menu-driven.

4. **Save & Load**
   - Use “Save Game” buttons to commit your stats/progress to the database.
   - Progress is retrieved and resumes automatically when you return.

## 🗄️ Database & Save System

- PHP endpoints (e.g., `dbConnector.php`) interact with MySQL tables:
  - `user_inventoryTable` and related (`inventoryTable`) handle items and gear.
  - `user_progress` tracks story advancement and stats.
- JavaScript async operations (`fetchuserInvId`, `insertIntoInventory`) link gameplay to backend storage—see `inventoryUpdated.js`, `Inventoryfunctions.js`.

## 🌐 Live Demo / Screenshots

- **Live Demo:** _(Add deployment URL or hosting info here, if available)_
- **Screenshots:** 
  ![Screenshot Placeholder](https://via.placeholder.com/800x400?text=Relicbound+Gameplay)
  ![Screenshot Placeholder](https://via.placeholder.com/800x400?text=Choose+Your+Superpower)
  <!-- Example: Insert actual images from /images folder later -->

## 🤝 Contributing

1. **Fork & Clone** the repository.
2. **Create a Branch** for your feature/fix.
3. **Commit and Push** changes with clear messages.
4. **Pull Request:** Submit via GitHub with description.
5. *See* [CONTRIBUTING.md](CONTRIBUTING.md) _(add file if not present)_ for details.

## 📜 License & Credits

- **License:** MIT (add full license text in LICENSE file)
- **Authors:**
  - [han-re](https://github.com/han-re) & contributors
- **Assets:** See `/images`, `/audio`, and code comments for source attributions.

## 🙌 Acknowledgments & Inspirations

- Inspired by Marvel’s Avengers, choice-driven RPGs (Detroit: Become Human, Life is Strange).
- Special thanks to game testers and anyone contributing advice or technical support.
- Built as a portfolio project for CSC1034.

---

> For full source code, issues, or to contribute, visit: [RelicBound0 on GitHub](https://github.com/han-re/RelicBound0)

_Results limited to the first 10 files. View all at: [RelicBound0 Code Search](https://github.com/han-re/RelicBound0/search?q=)._ 
