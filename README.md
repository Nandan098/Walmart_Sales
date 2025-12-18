# Walmart_Sales
This project demonstrates a complete end-to-end data analytics workflow using real-world Walmart sales data. I extracted the dataset, performed thorough cleaning and transformation using Python, and loaded the refined data into MySQL to execute analytical queries and solve business case studies.

<h2>📌 Project Steps</h2>

<h3>1️⃣ <b>Environment Setup</b></h3>
<b>Tools Used:</b> Visual Studio Code, Python, MySQL & PostgreSQL  
• Created a well-structured workspace with organized folders to ensure smooth development, data handling, and version control.

<h3>2️⃣ <b>Kaggle API Configuration</b></h3>
• Generated and configured the Kaggle API token to enable direct dataset downloads.  
• Placed the <b>kaggle.json</b> file in the local <b>.kaggle</b> directory.  
• Downloaded dataset using:  
<code>kaggle datasets download -d &lt;dataset-path&gt;</code>

<h3>3️⃣ <b>Downloading Walmart Sales Data</b></h3>
• Utilized the Kaggle API to download the Walmart Sales dataset.  
• Stored the dataset in the <b>data/</b> folder for easy access and processing.

<h3>4️⃣ <b>Library Installation & Data Loading</b></h3>
• Installed required Python packages:  
<code>pandas, numpy, sqlalchemy, mysql-connector-python, psycopg2</code>  
• Loaded the dataset into a Pandas DataFrame for preprocessing and exploratory analysis.

<h3>5️⃣ <b>Exploratory Data Analysis (EDA)</b></h3>
Performed initial inspection using <code>.info()</code>, <code>.describe()</code>, and <code>.head()</code> to:  
• Understand data distribution  
• Identify datatype and schema issues  
• Detect missing or inconsistent values

<h3>6️⃣ <b>Data Cleaning & Preparation</b></h3>
Executed comprehensive cleaning steps:  
• Removed duplicate records  
• Handled missing values  
• Corrected data types (e.g., dates & currency formats)  
• Formatted monetary values for consistency  
• Validated dataset post-cleaning for further processing

<h3>7️⃣ <b>Feature Engineering</b></h3>
• Created a new feature: <b>Total_Amount</b> calculated as:  
<code>unit_price × quantity</code>  
• Enabled more effective SQL queries and revenue aggregation.

<h3>8️⃣ <b>Data Loading into MySQL & PostgreSQL</b></h3>
• Established DB connections using <b>SQLAlchemy</b>  
• Automated:  
&nbsp;&nbsp;&nbsp;&nbsp;• Table creation  
&nbsp;&nbsp;&nbsp;&nbsp;• Data insertion  
&nbsp;&nbsp;&nbsp;&nbsp;• Schema alignment  
• Verified loading with sample SQL queries.

---

<h2>📊 Project Flow Chart</h2>

```mermaid
flowchart TD
    A[Kaggle Dataset] --> B[Download via Kaggle API]
    B --> C[Python: Data Loading & Exploration]
    C --> D[Data Cleaning & Preparation]
    D --> E[Feature Engineering]
    E --> F[Load into MySQL]
    E --> G[Load into PostgreSQL]
    F --> H[SQL Queries & Business Insights]
    G --> H[SQL Queries & Business Insights]

