# 🏠 House Prices: Advanced Regression Techniques

**Kaggle Competition - End-to-End Machine Learning Project**

[![Kaggle](https://img.shields.io/badge/Kaggle-Competition-20BEFF?style=flat&logo=kaggle)](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
[![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=flat&logo=python)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter)](https://jupyter.org/)

## 🏆 Competition Results

| Metric | Value |
|--------|-------|
| **Kaggle Score (RMSLE)** | **0.13409** 🎯 |
| **Expected Range** | 0.11 - 0.13 (based on CV) |
| **Public Leaderboard Rank** | **2082** / ~4500+ teams |
| **Percentile** | Top 46% |
| **Kaggle Notebook** | [View on Kaggle](https://www.kaggle.com/code/miracorhan/week3-houseprices-miracorhan/notebook) |
| **GitHub Repository** | [View Source Code](https://github.com/miracorhan/AI_Engineering_Week_3) |

*Score achieved through comprehensive feature engineering, model ensemble, and SHAP-based explainability analysis.*

## 📋 About the Project

This project is a professional machine learning pipeline developed for Kaggle's popular **House Prices - Advanced Regression Techniques** competition. It aims to predict housing prices in Ames, Iowa using 79 different features.

The project focuses not only on high prediction accuracy, but also on real-world ML practices such as **exploratory data analysis (EDA)**, **feature engineering**, **model explainability (SHAP)**, and **error analysis**.

### 🎯 Learning Objectives

- ✅ Exploratory Data Analysis (EDA)
- ✅ Missing data handling and data cleaning
- ✅ Feature Engineering
- ✅ Scikit-learn Pipeline & ColumnTransformer structures
- ✅ Multiple model training and comparison
- ✅ Cross Validation
- ✅ Overfitting control
- ✅ Model explainability with SHAP
- ✅ Error analysis and model improvement

## 🚀 Quick Start

### Requirements

- Python 3.12+
- Jupyter Notebook / JupyterLab / VS Code

### Installation

```bash
# Clone the repository
git clone https://github.com/miracorhan/AI_Engineering_Week_3
cd house-prices-advanced-regression-techniques

# Install required libraries
pip install pandas numpy scikit-learn matplotlib seaborn shap jupyter
```

### Execution

**Method 1: VS Code (Recommended)**
```bash
# Open the notebook in VS Code
code week3-houseprices-miracorhan.ipynb

# Select Python 3.12 kernel and click "Run All" button
```

**Method 2: Jupyter Notebook**
```bash
jupyter notebook
# Open week3-houseprices-miracorhan.ipynb in the browser interface
# Kernel → Restart & Run All
```

**Method 3: Automated Execution**
```bash
# Use the provided shell script
./RUN_NOTEBOOK.sh
```

### Verify Results

```bash
# Was the submission file created?
ls -lh submission_miracorhan.csv

# View first 10 predictions
head submission_miracorhan.csv

# Check line count (should be 1460)
wc -l submission_miracorhan.csv
```

## 📊 Project Structure

```
house-prices-advanced-regression-techniques/
│
├── week3-houseprices-miracorhan.ipynb     # Main notebook (English)
├── week3-houseprices-miracorhan_TR.ipynb  # Turkish version
├── train.csv                               # Training data (1460 houses, 81 columns)
├── test.csv                                # Test data (1459 houses, 80 columns)
├── data_description.txt                    # Data dictionary (79 feature descriptions)
├── sample_submission.csv                   # Sample submission format
│
├── submission_miracorhan.csv               # Kaggle submission file (output)
├── report_miracorhan.md                    # Final report (English)
│
├── RUN_NOTEBOOK.sh                         # Automated execution script
├── CALISTIRMA_KILAVUZU.md                 # Detailed execution guide (Turkish)
├── CLAUDE.md                               # Guide file for Claude Code
├── Homework.md                             # Assignment requirements document
├── README.md                               # This file (English)
└── README_TR.md                            # Turkish README
```

## 🔬 ML Pipeline Steps

The notebook follows this 13-step structure:

| Step | Description | Output |
|------|-------------|--------|
| **A** | Data Loading and Inspection | Data shape, info, describe |
| **B** | EDA (Exploratory Data Analysis) | Distribution plots, correlation heatmap |
| **C** | Data Cleaning | Missing value imputation, outlier removal |
| **D** | Feature Engineering | 5 new features (TotalSF, HouseAge, etc.) |
| **E** | Preprocessing Pipeline | ColumnTransformer + Pipeline |
| **F** | Model Training | Ridge, RandomForest, GradientBoosting |
| **G** | Model Evaluation | 5-Fold CV, RMSE metrics |
| **H** | Model Comparison Table | CV scores, train/valid RMSE |
| **I** | Overfitting Control | Train vs Validation analysis |
| **J** | SHAP Explainability | Feature importance, local explanations |
| **K** | Kaggle Submission | Test predictions, submission.csv |
| **L** | Error Analysis | Top 3 worst predictions analysis |
| **M** | Test Data Evaluation | Test set results and distribution analysis |

## 📈 Results

### Best Model: Ridge Regression

| Metric | Value |
|--------|-------|
| **CV RMSE Mean** | 0.11436 |
| **CV RMSE Std** | 0.00581 |
| **Train RMSE** | 0.0953 |
| **Validation RMSE** | 0.1211 |
| **Train/Valid Ratio** | 0.79 (Moderate overfitting) |
| **Kaggle Score** | Expected: 0.11-0.13 \| **Achieved: 0.13409** 🎯 (Rank: 2082/~4500) |

### Model Comparison

| Model | CV RMSE | Train RMSE | Valid RMSE | Status |
|-------|---------|------------|------------|--------|
| **Ridge** | 0.11436 | 0.0953 | 0.1211 | Moderate (Best) |
| **RandomForest** | 0.13687 | 0.0510 | 0.1479 | Overfitting |
| **GradientBoosting** | 0.12191 | 0.0742 | 0.1269 | Overfitting |

### Top 5 Most Important Features (SHAP Analysis)

1. **TotalSF** (Total Square Footage) - ↑ Positive impact (r=0.833)
2. **OverallQual** (Overall Quality) - ↑ Positive impact (r=0.79)
3. **HouseAge** (Age of House) - ↓ Negative impact (r=-0.524)
4. **TotalBathrooms** (Total Bathrooms) - ↑ Positive impact (r=0.636)
5. **GrLivArea** (Above Grade Living Area) - ↑ Positive impact (r=0.71)

### Key EDA Findings

- **Log Transformation**: SalePrice right-skewed (skewness=1.88) → near-normal after log1p (skewness=0.12)
- **Missing Data**: PoolQC 99.5%, MiscFeature 96.3%, Alley 93.8% missing - strategically filled with "None"
- **Strong Correlations**: TotalSF (0.833), OverallQual (0.79), GrLivArea (0.71) highest predictive features
- **Outlier Removal**: 2 extreme outliers removed (GrLivArea > 4000 AND SalePrice < $300k)

## 🛠️ Technologies Used

**Data Processing:**
- Pandas, NumPy

**Visualization:**
- Matplotlib, Seaborn

**Machine Learning:**
- Scikit-learn (Ridge, RandomForest, GradientBoosting)
- Pipeline, ColumnTransformer, SimpleImputer, StandardScaler, OneHotEncoder

**Model Explainability:**
- SHAP (SHapley Additive exPlanations)

**Development Environment:**
- Jupyter Notebook, VS Code

## 🎓 Important Concepts

### Log Transformation
- **Why?** Kaggle metric uses RMSLE (Root Mean Squared Logarithmic Error)
- **How?** Model with `y = log1p(SalePrice)`, convert back with `expm1()`
- **Result:** Right-skewed distribution → Near-normal distribution

### Feature Engineering Examples

```python
# Total Square Footage
TotalSF = TotalBsmtSF + 1stFlrSF + 2ndFlrSF

# Age of House
HouseAge = YrSold - YearBuilt

# Renovation Age
RemodAge = YrSold - YearRemodAdd

# Total Bathrooms
TotalBathrooms = FullBath + 0.5*HalfBath + BsmtFullBath + 0.5*BsmtHalfBath

# Total Porch Area
TotalPorchSF = OpenPorchSF + EnclosedPorch + ScreenPorch
```

### Pipeline Structure

```python
preprocessor = ColumnTransformer([
    ('num', Pipeline([
        ('imputer', SimpleImputer(strategy='median')),
        ('scaler', StandardScaler())
    ]), numeric_features),
    ('cat', Pipeline([
        ('imputer', SimpleImputer(strategy='most_frequent')),
        ('encoder', OneHotEncoder(handle_unknown='ignore', sparse_output=False))
    ]), categorical_features)
])

model = Pipeline([
    ('preprocessor', preprocessor),
    ('regressor', Ridge(alpha=10.0))
])
```

## 🐛 Common Issues and Solutions

| Issue | Solution |
|-------|----------|
| `ModuleNotFoundError` | `pip install --break-system-packages <package-name>` |
| `FileNotFoundError` | Check directory with `pwd`, ensure you're in the correct folder |
| `NameError` | Restart kernel, run cells sequentially |
| Graphics not showing | Run in notebook interface (VS Code/Jupyter) instead of terminal |
| SHAP calculation slow | Expected for large datasets; wait or reduce sample size |

## 📝 Deliverables

- ✅ `week3-houseprices-miracorhan.ipynb` - Full notebook with all outputs (English)
- ✅ `week3-houseprices-miracorhan_TR.ipynb` - Turkish version
- ✅ `submission_miracorhan.csv` - Kaggle submission file (1,459 predictions)
- ✅ `report_miracorhan.md` - Comprehensive final report (English)

## 🔍 Error Analysis Insights

The model struggles with very large houses (>4,000 sq ft):
- **House 1** (Crawfor, 2,752 sq ft): Under-predicted by $62,734 (20.1%)
- **House 2** (CollgCr, 4,056 sq ft): Over-predicted by $55,272 (20.0%)
- **House 3** (NAmes, 4,446 sq ft): Over-predicted by $52,373 (21.5%)

**Root Cause:** Linear models struggle with non-linear pricing in premium neighborhoods and very large houses.

## 📊 Test Data Predictions

- **Number of predictions:** 1,459 houses
- **Price range:** $45,903 - $1,755,851
- **Mean prediction:** $179,602
- **Median prediction:** $156,632
- **All quality checks:** ✅ Passed

## 🔗 Links

- [Kaggle Competition](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
- [Download Dataset](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/data)
- [Leaderboard](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/leaderboard)
- [Kaggle Notebook](https://www.kaggle.com/code/miracorhan/week3-houseprices-miracorhan/notebook) - View the full notebook on Kaggle
- [GitHub Repository](https://github.com/miracorhan/AI_Engineering_Week_3) - View source code and project files

## 📖 Additional Documentation

- **CALISTIRMA_KILAVUZU.md** - Detailed execution instructions (Turkish)
- **CLAUDE.md** - Technical guide for Claude Code (English)
- **Homework.md** - Assignment requirements and evaluation criteria
- **data_description.txt** - Detailed descriptions of 79 features
- **report_miracorhan.md** - Comprehensive final report with detailed analysis

## 🎯 Project Highlights

**Data Processing:**
- 1,460 training observations (after outlier removal)
- 79 features (36 numerical, 43 categorical after preprocessing)
- 5 engineered features created with strong predictive power

**Model Performance:**
- Ridge Regression: Best balance of interpretability and performance
- RandomForest: Severe overfitting (ratio: 0.34)
- GradientBoosting: Moderate overfitting (ratio: 0.58)

**Production Ready:**
- All 13 pipeline steps implemented (A through M)
- SHAP analysis for model interpretability
- Comprehensive error analysis
- Test predictions validated and within reasonable bounds

## 👤 Developer

**Miraç Orhan**
AI Engineering - Week 3 Project
Date: January 2026

---

## 📄 License

This project was developed for educational purposes. The dataset was created by [Dean De Cock](http://jse.amstat.org/v19n3/decock.pdf) and is hosted by Kaggle.

---

**⭐ If you liked the project, don't forget to star it!**
