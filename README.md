# 🏠 House Prices: Advanced Regression Techniques

**Kaggle Yarışması - Uçtan Uca Makine Öğrenmesi Projesi**

[![Kaggle](https://img.shields.io/badge/Kaggle-Competition-20BEFF?style=flat&logo=kaggle)](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
[![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=flat&logo=python)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=flat&logo=jupyter)](https://jupyter.org/)

## 📋 Proje Hakkında

Bu proje, Kaggle'ın popüler **House Prices - Advanced Regression Techniques** yarışması için geliştirilmiş profesyonel bir makine öğrenmesi pipeline'ıdır. Ames, Iowa'daki konut fiyatlarını 79 farklı özellik kullanarak tahmin etmeyi amaçlar.

Proje, sadece yüksek tahmin doğruluğu değil, aynı zamanda **veri keşfi (EDA)**, **özellik mühendisliği**, **model açıklanabilirliği (SHAP)** ve **hata analizi** gibi gerçek dünya ML uygulamalarına odaklanır.

### 🎯 Öğrenme Hedefleri

- ✅ Keşifsel Veri Analizi (EDA)
- ✅ Eksik veri işleme ve veri temizleme
- ✅ Özellik mühendisliği (Feature Engineering)
- ✅ Scikit-learn Pipeline & ColumnTransformer yapıları
- ✅ Çoklu model eğitimi ve karşılaştırma
- ✅ Çapraz doğrulama (Cross Validation)
- ✅ Overfitting kontrolü
- ✅ SHAP ile model açıklanabilirliği
- ✅ Hata analizi ve model iyileştirme

## 🚀 Hızlı Başlangıç

### Gereksinimler

- Python 3.12+
- Jupyter Notebook / JupyterLab / VS Code

### Kurulum

```bash
# Repository'yi klonlayın
git clone <repository-url>
cd house-prices-advanced-regression-techniques

# Gerekli kütüphaneleri yükleyin
pip install pandas numpy scikit-learn matplotlib seaborn shap jupyter
```

### Çalıştırma

**Yöntem 1: VS Code (Önerilen)**
```bash
# Notebook'u VS Code'da açın
code week3-houseprices-miracorhan.ipynb

# Python 3.12 kernel'ı seçin ve "Run All" butonuna tıklayın
```

**Yöntem 2: Jupyter Notebook**
```bash
jupyter notebook
# Tarayıcıda açılan arayüzde week3-houseprices-miracorhan.ipynb dosyasını açın
# Kernel → Restart & Run All
```

**Yöntem 3: Otomatik Çalıştırma**
```bash
# Sağlanan shell script'i kullanın
./RUN_NOTEBOOK.sh
```

### Sonuçları Doğrulama

```bash
# Submission dosyası oluşturuldu mu?
ls -lh submission_miracorhan.csv

# İlk 10 tahmini görüntüle
head submission_miracorhan.csv

# Satır sayısını kontrol et (1460 olmalı)
wc -l submission_miracorhan.csv
```

## 📊 Proje Yapısı

```
house-prices-advanced-regression-techniques/
│
├── week3-houseprices-miracorhan.ipynb  # Ana notebook (65 hücre)
├── train.csv                            # Eğitim verisi (1460 ev, 81 sütun)
├── test.csv                             # Test verisi (1459 ev, 80 sütun)
├── data_description.txt                 # Veri sözlüğü (79 özellik açıklaması)
├── sample_submission.csv                # Örnek submission formatı
│
├── submission_miracorhan.csv            # Kaggle submission dosyası (çıktı)
├── report_miracorhan.md                 # Final rapor
│
├── RUN_NOTEBOOK.sh                      # Otomatik çalıştırma scripti
├── CALISTIRMA_KILAVUZU.md              # Detaylı çalıştırma kılavuzu (Türkçe)
├── CLAUDE.md                            # Claude Code için rehber dosyası
├── Homework.md                          # Ödev gereksinimler dökümanı
└── README.md                            # Bu dosya
```

## 🔬 ML Pipeline Adımları

Notebook, aşağıdaki 12 adımlı yapıyı takip eder:

| Adım | Açıklama | Çıktı |
|------|----------|-------|
| **A** | Veri Yükleme ve İnceleme | Data shape, info, describe |
| **B** | EDA (Keşifsel Veri Analizi) | Dağılım grafikleri, korelasyon heatmap |
| **C** | Veri Temizleme | Eksik değer doldurma, outlier temizleme |
| **D** | Özellik Mühendisliği | 5 yeni feature (TotalSF, HouseAge, vb.) |
| **E** | Preprocessing Pipeline | ColumnTransformer + Pipeline |
| **F** | Model Eğitimi | Ridge, RandomForest, GradientBoosting |
| **G** | Model Değerlendirme | 5-Fold CV, RMSE metrikleri |
| **H** | Model Karşılaştırma Tablosu | CV scores, train/valid RMSE |
| **I** | Overfitting Kontrolü | Train vs Validation analizi |
| **J** | SHAP Açıklanabilirlik | Feature importance, local explanations |
| **K** | Kaggle Submission | Test tahminleri, submission.csv |
| **L** | Hata Analizi | En kötü 3 tahmin analizi |

## 📈 Sonuçlar

### En İyi Model: Ridge Regression

| Metrik | Değer |
|--------|-------|
| **CV RMSE Mean** | 0.11436 |
| **CV RMSE Std** | 0.00581 |
| **Train RMSE** | 0.095 |
| **Validation RMSE** | 0.121 |
| **Kaggle Score** | *[Submission bekliyor]* |

### Top 5 En Önemli Özellikler (SHAP Analizi)

1. **TotalSF** (Toplam Metrekare) - ↑ Pozitif etki
2. **OverallQual** (Genel Kalite) - ↑ Pozitif etki
3. **HouseAge** (Evin Yaşı) - ↓ Negatif etki
4. **TotalBathrooms** (Toplam Banyo) - ↑ Pozitif etki
5. **Neighborhood** (Mahalle) - ↕ Karma etki

### Önemli EDA Bulguları

- **Log Dönüşümü**: SalePrice sağa çarpık (skewness=1.88) → log1p sonrası normal dağılıma yakın (skewness=0.12)
- **Eksik Veri**: LotFrontage %17.7, Garaj özellikleri ~%5 eksik
- **Korelasyon**: TotalSF (0.79), OverallQual (0.79), GrLivArea (0.71) en yüksek korelasyona sahip

## 🛠️ Kullanılan Teknolojiler

**Veri İşleme:**
- Pandas, NumPy

**Görselleştirme:**
- Matplotlib, Seaborn

**Makine Öğrenmesi:**
- Scikit-learn (Ridge, RandomForest, GradientBoosting)
- Pipeline, ColumnTransformer, SimpleImputer, StandardScaler, OneHotEncoder

**Model Açıklanabilirlik:**
- SHAP (SHapley Additive exPlanations)

**Geliştirme Ortamı:**
- Jupyter Notebook, VS Code

## 🎓 Önemli Kavramlar

### Log Transformasyonu
- **Neden?** Kaggle metriği RMSLE (Root Mean Squared Logarithmic Error) kullanır
- **Nasıl?** `y = log1p(SalePrice)` ile modelleme, `expm1()` ile geri dönüş
- **Sonuç:** Sağa çarpık dağılım → Normal dağılıma yakın

### Özellik Mühendisliği Örnekleri

```python
# Toplam Metrekare
TotalSF = TotalBsmtSF + 1stFlrSF + 2ndFlrSF

# Evin Yaşı
HouseAge = YrSold - YearBuilt

# Toplam Banyo
TotalBathrooms = FullBath + 0.5*HalfBath + BsmtFullBath + 0.5*BsmtHalfBath

# Toplam Veranda Alanı
TotalPorchSF = OpenPorchSF + EnclosedPorch + 3SsnPorch + ScreenPorch
```

### Pipeline Yapısı

```python
preprocessor = ColumnTransformer([
    ('num', Pipeline([
        ('imputer', SimpleImputer(strategy='median')),
        ('scaler', StandardScaler())
    ]), numeric_features),
    ('cat', Pipeline([
        ('imputer', SimpleImputer(strategy='most_frequent')),
        ('encoder', OneHotEncoder(handle_unknown='ignore'))
    ]), categorical_features)
])

model = Pipeline([
    ('preprocessor', preprocessor),
    ('regressor', Ridge(alpha=10))
])
```

## 🐛 Yaygın Sorunlar ve Çözümleri

| Sorun | Çözüm |
|-------|-------|
| `ModuleNotFoundError` | `pip install --break-system-packages <paket-adı>` |
| `FileNotFoundError` | `pwd` ile dizini kontrol et, doğru klasörde olduğundan emin ol |
| `NameError` | Kernel'ı restart et, hücreleri sırayla çalıştır |
| Grafikler görünmüyor | Terminal yerine notebook arayüzünde (VS Code/Jupyter) çalıştır |

## 📝 Teslim Edilecek Dosyalar

- ✅ `week3-houseprices-miracorhan.ipynb` - Tüm çıktıları içeren notebook
- ✅ `submission_miracorhan.csv` - Kaggle submission dosyası
- ✅ `report_miracorhan.md` - 1 sayfalık final rapor

## 🔗 Bağlantılar

- [Kaggle Yarışması](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
- [Veri Seti İndir](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/data)
- [Leaderboard](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/leaderboard)

## 📖 Ek Dökümanlar

- **CALISTIRMA_KILAVUZU.md** - Detaylı çalıştırma talimatları (Türkçe)
- **CLAUDE.md** - Claude Code için teknik rehber (İngilizce)
- **Homework.md** - Ödev gereksinimleri ve değerlendirme kriterleri
- **data_description.txt** - 79 özelliğin detaylı açıklamaları

## 👤 Geliştirici

**Miraç Orhan**
AI Engineering - Week 3 Project
Tarih: Ocak 2026

---

## 📄 Lisans

Bu proje eğitim amaçlı geliştirilmiştir. Veri seti [Dean De Cock](http://jse.amstat.org/v19n3/decock.pdf) tarafından oluşturulmuş ve Kaggle tarafından barındırılmaktadır.

---

**⭐ Projeyi beğendiyseniz yıldız vermeyi unutmayın!**
