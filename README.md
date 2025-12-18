# Walmart_Sales
This project demonstrates a complete end-to-end data analytics workflow using real-world Walmart sales data. I extracted the dataset, performed thorough cleaning and transformation using Python, and loaded the refined data into MySQL to execute analytical queries and solve business case studies.
<hr>

<h2> Project Steps</h2>

<h3>1️. <b>Environment Setup</b></h3>
<b>Tools Used:</b> Visual Studio Code, Python, MySQL & PostgreSQL  <br>
• Created a well-structured workspace with organized folders to ensure smooth development, data handling, and version control.

<h3>2️. <b>Kaggle API Configuration</b></h3>
• Generated and configured the Kaggle API token to enable direct dataset downloads.  <br>
• Placed the <b>kaggle.json</b> file in the local <b>.kaggle</b> directory.  <br>
• Downloaded dataset using:  <br>
<code>kaggle datasets download -d &lt;dataset-path&gt;</code>

<h3>3. <b>Downloading Walmart Sales Data</b></h3> <br>
• Utilized the Kaggle API to download the Walmart Sales dataset.  <br>
• Stored the dataset in the <b>data/</b> folder for easy access and processing.

<h3>4️. <b>Library Installation & Data Loading</b></h3>
• Installed required Python packages:  <br>
<code>pandas, numpy, sqlalchemy, mysql-connector-python, psycopg2</code>  <br>
• Loaded the dataset into a Pandas DataFrame for preprocessing and exploratory analysis.

<h3>5️. <b>Exploratory Data Analysis (EDA)</b></h3>
Performed initial inspection using <code>.info()</code>, <code>.describe()</code>, and <code>.head()</code> to:  <br>
• Understand data distribution  <br>
• Identify datatype and schema issues  <br>
• Detect missing or inconsistent values

<h3>6️. <b>Data Cleaning & Preparation</b></h3>
Executed comprehensive cleaning steps:  <br>
• Removed duplicate records  <br>
• Handled missing values  <br>
• Corrected data types (e.g., dates & currency formats)  <br>
• Formatted monetary values for consistency  <br>
• Validated dataset post-cleaning for further processing

<h3>7️. <b>Feature Engineering</b></h3> <br>
• Created a new feature: <b>Total_Amount</b> calculated as:  <br>
<code>unit_price × quantity</code>  <br>
• Enabled more effective SQL queries and revenue aggregation.

<h3>8️. <b>Data Loading into MySQL & PostgreSQL</b></h3>  <br>
• Established DB connections using <b>SQLAlchemy</b>  <br>
• Automated:  
&nbsp;&nbsp;&nbsp;&nbsp;• Table creation  
&nbsp;&nbsp;&nbsp;&nbsp;• Data insertion  
&nbsp;&nbsp;&nbsp;&nbsp;• Schema alignment  
• Verified loading with sample SQL queries.

---

<h2> Project Flow Chart</h2>

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

