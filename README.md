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
![Pollutant Count](images/graph-pollutant-count.png)

### 2️⃣ Which Cities Are the Most Polluted?
![City Pollution](images/graph-city-pollution.png)

### 3️⃣ Which States Need the Most Attention?
![State Pollution](images/graph-state-pollution.png)

### 4️⃣ Does Weather Affect Pollution?
![Correlation Heatmap](images/graph-correlation.png)

---

## 🖥️ The Interactive Power BI Dashboard

A clean, click-and-explore dashboard was built so anyone can filter by city, state, or pollutant.

![Dashboard View 1](images/dashboard-1.png)

![Dashboard View 2](images/dashboard-2.png)

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
