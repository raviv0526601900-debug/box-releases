# BOX — הורדות

אפליקציית BOX למחשב: כל מערכת BOX (theouterspace.online) בחלון משלה, למק ולחלונות.

### [⬇ להורדת הגרסה האחרונה](../../releases/latest)

| | |
|---|---|
| **חלונות — התקנה** | `BOX-Setup-<גרסה>.exe` — מתקין את BOX ומוסיף קיצור דרך. בלי הרשאות מנהל |
| **חלונות — בלי התקנה** | `BOX-<גרסה>-windows-portable.zip` — מחלצים ומריצים את `BOX.exe` |
| **מק** | `BOX-<גרסה>-mac.zip` — Apple Silicon ו-Intel |

## התקנה בחלונות

מריצים את `BOX-Setup-<גרסה>.exe`. אם מופיע חלון כחול של SmartScreen: **More info** ואז **Run anyway**.

## התקנה במק

הגרסה למק עדיין אינה חתומה על ידי Apple, ולכן macOS חוסם אותה אם מורידים אותה מהדפדפן ולוחצים עליה ("BOX" Not Opened).

**הדרך הקצרה (מומלץ):** פותחים את **Terminal** (חיפוש ב-Spotlight: Terminal), מדביקים את השורה הזו ולוחצים Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/raviv0526601900-debug/box-releases/main/install-mac.sh | bash
```

השורה מורידה את הגרסה האחרונה, מתקינה את BOX בתיקיית היישומים ופותחת אותה, בלי אזהרות. כך גם מעדכנים לגרסה חדשה.

**אם כבר הורדתם את הזיפ מהדפדפן:**

1. לחיצה כפולה על `Install BOX.command`. בחלון האזהרה לוחצים **Done** (לא Move to Bin).
2. פותחים **הגדרות המערכת ← פרטיות ואבטחה** (System Settings ← Privacy & Security), גוללים למטה ולוחצים **Open Anyway** ליד "Install BOX.command".
3. מאשרים **Open Anyway** ומזינים את סיסמת המק. BOX מותקן בתיקיית היישומים ונפתח.

## כניסה

נכנסים עם חשבון BOX הרגיל (מייל וסיסמה, או Google). כניסה עם Google נפתחת בדפדפן וחוזרת לאפליקציה לבד.

בטלפון: פותחים את [theouterspace.online/install](https://theouterspace.online/install) ומוסיפים את BOX למסך הבית.

## כל הגרסאות

[רשימת כל הגרסאות וקובצי ההתקנה](../../releases)

---

הקוד עצמו פרטי. המאגר הזה מכיל קובצי התקנה בלבד.
