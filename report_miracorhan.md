# House Prices Advanced Regression - Final Report
**Student:** Miraç Orhan
**Date:** January 2026
**Project:** Week 3 - House Prices Advanced Regression Techniques

---

## 1. Best Model

**Ridge Regression** was selected as the best performing model.

**Key Characteristics:**
- Linear regression with L2 regularization
- Prevents overfitting through coefficient penalty
- Highly interpretable with stable predictions
- Excellent generalization to unseen data

---

## 2. Cross-Validation Score

**Metric:** RMSE on log-transformed SalePrice (aligned with Kaggle's RMSLE metric)

- **CV RMSE Mean:** 0.11436
- **CV RMSE Std:** 0.00581
- **K-Fold:** 5 folds
- **Train RMSE:** 0.095
- **Validation RMSE:** 0.121

**Interpretation:** The low standard deviation (0.00581) indicates highly stable and reliable predictions across all folds. The small gap between training and validation error (0.026) demonstrates excellent generalization with minimal overfitting.

---

## 3. Kaggle Score

**Status:** Pending submission
**Expected Score:** ~0.11-0.12 (based on CV performance)

*[To be updated after Kaggle submission]*

---

## 4. Top 5 Most Important Features

Based on SHAP (SHapley Additive exPlanations) analysis of the Ridge model:

1. **TotalSF (Total Square Footage)** - ↑ Positive Impact
   Larger homes command significantly higher prices. This engineered feature consolidates basement, first floor, and second floor areas.

2. **OverallQual (Overall Quality Rating)** - ↑ Positive Impact
   Build quality and material finish are critical price drivers. Houses rated 8-10 show exponential price premiums.

3. **HouseAge (Age of House)** - ↓ Negative Impact
   Newer homes generally sell for more. Each year of age reduces value, though renovations can offset this effect.

4. **TotalBathrooms (Total Bathroom Count)** - ↑ Positive Impact
   Comfort and convenience metric. Homes with 3+ bathrooms show strong price appreciation.

5. **Neighborhood (Location)** - ↕ Mixed Effect
   Premium neighborhoods (e.g., NoRidge, NridgHt, StoneBr) command 30-50% price premiums. Location is crucial.

---

## 5. Top 3 EDA Findings

### Finding 1: Target Distribution Transformation
- **Original SalePrice:** Right-skewed distribution (skewness = 1.88)
- **After log1p transformation:** Near-normal distribution (skewness = 0.12)
- **Impact:** Log transformation was critical for model performance and meeting Kaggle metric requirements

### Finding 2: Missing Data Patterns
- **LotFrontage:** 17.7% missing (linear feet of street connection)
- **Garage features:** ~5% missing (valid for homes without garages)
- **Strategy:** Median imputation for numerical, mode for categorical features handled missing data effectively without introducing bias

### Finding 3: Feature Correlation Hierarchy
- **Strong correlators:** TotalSF (0.79), OverallQual (0.79), GrLivArea (0.71)
- **Location dominance:** Neighborhood showed higher predictive power than individual structural features
- **Multicollinearity:** Several redundant features (e.g., separate floor areas) → feature engineering reduced this

---

## 6. Problems Encountered & Solutions

### Problem 1: Neighborhood Premium Underestimation

**Issue:**
The model consistently under-predicted prices for homes in historically significant or premium neighborhoods (e.g., Crawford, NoRidge). Analysis of error cases revealed that neighborhood effects extend beyond simple categorical encoding.

**Root Cause:**
OneHotEncoding treats all neighborhoods as independent categories, missing nuanced relationships like proximity to amenities, school districts, or local development trends.

**Solution Implemented:**
- Kept Ridge model due to its superior overall performance
- Accepted minor under-prediction in premium neighborhoods as acceptable trade-off

**Future Improvements:**
- Neighborhood clustering based on price similarity
- Geospatial feature engineering (distance to downtown, parks, schools)
- Interaction terms between Neighborhood and Quality/Size features

---

### Problem 2: RandomForest Severe Overfitting

**Issue:**
RandomForestRegressor showed excellent training performance (RMSE = 0.051) but poor validation performance (RMSE = 0.159), indicating severe overfitting.

**Root Cause:**
- Default hyperparameters allow trees to grow too deep
- Model memorized training data patterns instead of learning generalizable relationships
- High model complexity (100 estimators) exacerbated variance

**Solution Implemented:**
- Selected Ridge Regression instead (Train RMSE 0.095, Valid RMSE 0.121)
- Ridge provided better bias-variance trade-off
- More stable predictions across cross-validation folds

**Alternative Approaches Considered:**
- Increase `min_samples_leaf` to 20-30 (force shallower trees)
- Reduce `max_depth` to 10-15 (limit tree complexity)
- Reduce number of estimators from 100 to 50
- Apply feature selection to reduce noise

**Outcome:**
Ridge's interpretability, stability, and superior CV score made it the optimal choice for this problem.

---

## Summary

This project successfully developed an end-to-end machine learning pipeline for house price prediction. The Ridge Regression model achieved strong performance (CV RMSE = 0.11436) with excellent stability. Feature engineering proved critical, with engineered features (TotalSF, HouseAge, TotalBathrooms) among the top predictors. The analysis revealed that location, size, and quality dominate price determination, while proper data preprocessing and log transformation were essential for model success.

**Key Takeaways:**
- Log transformation normalized skewed target distribution
- Engineered features outperformed raw features
- Ridge regression balanced interpretability with performance
- Cross-validation prevented overfitting and ensured reliable estimates

---

**Project Status:** ✅ Complete
**Deliverables:** Notebook, Report, Submission File
**Ready for Submission:** Yes
