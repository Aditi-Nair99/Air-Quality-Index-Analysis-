<div align="center">

# 🌍 AQI Analysis Project

### Understanding India's Air, One City at a Time 🏙️💨

![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&size=22&pause=1000&color=2E9EF7&center=true&vCenter=true&width=600&lines=Cleaning+Data...;Finding+Patterns...;Building+Dashboards...;Making+Air+Quality+Simple!)

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

</div>

---

## 📖 What Is This Project About?

Have you ever wondered **how clean or dirty the air is** in your city? 🌬️

This project answers that question! It looks at real air pollution data from cities across India, cleans it up, studies it, and turns it into easy-to-read charts and a dashboard — so that anyone (even someone who has never seen a data project before) can understand which cities have good air and which ones need help.

Think of it like a **health check-up, but for the air we breathe.** 🫁

---

## 🤔 What Is AQI?

**AQI = Air Quality Index**

It's just a simple number that tells us if the air is safe or unsafe to breathe.

| AQI Range | Category | What It Means |
|:---:|:---|:---|
| 🟢 0 – 50 | Good | Air is clean and safe |
| 🟡 51 – 100 | Satisfactory | Minor breathing discomfort possible |
| 🟠 101 – 200 | Moderate | May affect sensitive people |
| 🔴 201 – 300 | Poor | Breathing discomfort for most people |
| 🟣 301 – 400 | Very Poor | Health warning — everyone affected |
| ⚫ 401 – 500 | Severe | Serious health risk |

---

## 🎯 Why This Project Matters

- 🏥 Helps people understand pollution risks in their city
- 🏙️ Helps the government find the most polluted cities/states that need action
- 🌦️ Studies how weather (rain, wind, heat) affects pollution
- 📊 Turns messy raw data into simple, visual answers

---

## 🛠️ How the Project Was Built (Step by Step)

```
📥 Step 1: Collect Data  →  🧹 Step 2: Clean Data  →  🗄️ Step 3: Store in Database
        →  🐍 Step 4: Analyze with Python  →  📊 Step 5: Build Power BI Dashboard
        →  📑 Step 6: Report Findings
```

<div align="center">

| Tool | What It Was Used For |
|:---:|:---|
| 🐍 **Python (Pandas, Seaborn, Matplotlib)** | Cleaning data & finding patterns |
| 🗄️ **PostgreSQL** | Storing data neatly like a database |
| 📊 **Power BI** | Building an interactive dashboard |
| 📓 **Jupyter Notebook** | Step-by-step exploratory analysis (EDA) |
| 📑 **PowerPoint / PDF Report** | Explaining results to non-technical people |

</div>

---

## 🗂️ The Data Behind the Project

This project uses **3 connected datasets**:

| 📁 Dataset | 📋 What's Inside |
|---|---|
| **Location Master** | Every unique city & state, with a Location ID |
| **AQI Data** | 3,288 pollution readings — pollutant type, min/max/avg values |
| **Weather Data** | Temperature, humidity, rainfall, wind speed, and more |

They are all linked together using a simple `Location_ID`, just like connecting puzzle pieces! 🧩

```
   Location Master 🧭
       ↙        ↘
 AQI Data 🌫️     Weather Data ⛅
```

---

## 🔍 What We Discovered (Key Insights)

- 📍 The dataset covers **263 cities** across **29 states** in India
- 🧪 **7 types of pollutants** were tracked (like PM2.5, PM10, NO2, SO2, Ozone)
- 🏭 The city with the **worst average pollution** was **Angul**
- 🗺️ The state with the **worst average pollution** was **Haryana**
- 🌫️ **PM10** turned out to be the most concerning pollutant overall
- ⛅ Weather and pollution were combined into **3,259 matched records** to study their relationship

---

## 📊 Visuals from the Analysis

### 1️⃣ Which Pollutants Show Up the Most?
<img width="371" height="218" alt="ppt 1" src="https://github.com/user-attachments/assets/72b047ac-34d4-4e95-8f81-1c5b73ac8bc1" />


### 2️⃣ Which Cities Are the Most Polluted?
<img width="348" height="289" alt="ppt 3" src="https://github.com/user-attachments/assets/88f7da05-560e-496c-b2be-fc85f6492d0c" />


### 3️⃣ Which States Need the Most Attention?
<img width="420" height="362" alt="ppt 4" src="https://github.com/user-attachments/assets/9b297884-e36f-46a9-998f-72c9503a67ff" />


### 4️⃣ Does Weather Affect Pollution?
<img width="303" height="203" alt="ppt 6" src="https://github.com/user-attachments/assets/fb342ed9-95d1-4cac-82ed-132dd7bb163e" />


---

## 🖥️ The Interactive Power BI Dashboard

A clean, click-and-explore dashboard was built so anyone can filter by city, state, or pollutant.

<img width="593" height="332" alt="Dashboard 1" src="https://github.com/user-attachments/assets/ba96a304-04ef-4e59-906d-4d6ceb09730d" />


<img width="579" height="324" alt="Dashboard 2" src="https://github.com/user-attachments/assets/524417c4-ec93-4dae-b364-5ca3a7a7e7d5" />


---

## 📁 Project Structure

```
AQI ANALYSIS PROJECT/
│
├── 📂 DATASET/                     → All raw & cleaned CSV/Excel data
├── 📂 POSTGRESQL/                  → SQL scripts to build the database
├── 📂 POWER BI DASHBOARD/          → .pbix file + dashboard screenshots
├── 📂 PYTHON EDA/                  → Jupyter Notebook + graph images
└── 📂 PROJECT PPT & REPORT/        → Presentation slides + PDF report
```

---

## 🚀 How To Explore This Project Yourself

1. 📥 Clone this repository
2. 📓 Open `AQI ANALYSIS EDA.ipynb` in Jupyter Notebook to see the full analysis
3. 🗄️ Run the `.sql` files in PostgreSQL to build the database
4. 📊 Open the `.pbix` file in Power BI Desktop to explore the dashboard yourself
5. 📑 Check the PDF report or PPT for a quick summary

---

## 🌱 Why This Kind of Project Is Useful

This project isn't just about numbers — it's about **turning raw data into something that helps people make better decisions**: choosing where to live, when to go outside, or where the government should focus pollution-control efforts. 🌏💚

---

<div align="center">

### 💬 Feel free to explore, fork, and improve this project!

⭐ **If this project helped you understand AQI better, consider giving it a star!** ⭐

</div>
