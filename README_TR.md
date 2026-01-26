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
# Türkçe notebook'u açın
code week3-houseprices-miracorhan_TR.ipynb
# VEYA İngilizce notebook'u açın
code week3-houseprices-miracorhan.ipynb

# Python 3.12 kernel'ı seçin ve "Run All" butonuna tıklayın
```

**Yöntem 2: Jupyter Notebook**
```bash
jupyter notebook
# Tarayıcıda açılan arayüzde notebook dosyasını açın:
#   - week3-houseprices-miracorhan_TR.ipynb (Türkçe) VEYA
#   - week3-houseprices-miracorhan.ipynb (İngilizce)
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
├── week3-houseprices-miracorhan.ipynb     # Ana notebook (İngilizce)
├── week3-houseprices-miracorhan_TR.ipynb  # Türkçe versiyonu
├── train.csv                               # Eğitim verisi (1460 ev, 81 sütun)
├── test.csv                                # Test verisi (1459 ev, 80 sütun)
├── data_description.txt                    # Veri sözlüğü (79 özellik açıklaması)
├── sample_submission.csv                   # Örnek submission formatı
│
├── submission_miracorhan.csv               # Kaggle submission dosyası (çıktı)
├── report_miracorhan.md                    # Final rapor (İngilizce)
│
├── RUN_NOTEBOOK.sh                         # Otomatik çalıştırma scripti
├── CALISTIRMA_KILAVUZU.md                 # Detaylı çalıştırma kılavuzu (Türkçe)
├── CLAUDE.md                               # Claude Code için rehber dosyası
├── Homework.md                             # Ödev gereksinimler dökümanı
├── README.md                               # İngilizce README
└── README_TR.md                            # Bu dosya (Türkçe)
```

## 🔬 ML Pipeline Adımları

Notebook, aşağıdaki 13 adımlı yapıyı takip eder:

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
| **M** | Test Verisi Değerlendirmesi | Test seti sonuçları ve dağılım analizi |

## 📈 Sonuçlar

### En İyi Model: Ridge Regression

| Metrik | Değer |
|--------|-------|
| **CV RMSE Mean** | 0.11436 |
| **CV RMSE Std** | 0.00581 |
| **Train RMSE** | 0.0953 |
| **Validation RMSE** | 0.1211 |
| **Train/Valid Ratio** | 0.79 (Orta seviye overfitting) |
| **Kaggle Score** | *[Tahmini: 0.11-0.13]* |

### Model Karşılaştırması

| Model | CV RMSE | Train RMSE | Valid RMSE | Durum |
|-------|---------|------------|------------|-------|
| **Ridge** | 0.11436 | 0.0953 | 0.1211 | Orta (En İyi) |
| **RandomForest** | 0.13687 | 0.0510 | 0.1479 | Aşırı Overfitting |
| **GradientBoosting** | 0.12191 | 0.0742 | 0.1269 | Overfitting |

### Top 5 En Önemli Özellikler (SHAP Analizi)

1. **TotalSF** (Toplam Metrekare) - ↑ Pozitif etki (r=0.833)
2. **OverallQual** (Genel Kalite) - ↑ Pozitif etki (r=0.79)
3. **HouseAge** (Evin Yaşı) - ↓ Negatif etki (r=-0.524)
4. **TotalBathrooms** (Toplam Banyo) - ↑ Pozitif etki (r=0.636)
5. **GrLivArea** (Yer Üstü Yaşam Alanı) - ↑ Pozitif etki (r=0.71)

### Önemli EDA Bulguları

- **Log Dönüşümü**: SalePrice sağa çarpık (skewness=1.88) → log1p sonrası normal dağılıma yakın (skewness=0.12)
- **Eksik Veri**: PoolQC %99.5, MiscFeature %96.3, Alley %93.8 eksik - stratejik olarak "None" ile dolduruldu
- **Güçlü Korelasyonlar**: TotalSF (0.833), OverallQual (0.79), GrLivArea (0.71) en yüksek tahmin gücüne sahip
- **Outlier Temizliği**: 2 aşırı uç değer kaldırıldı (GrLivArea > 4000 VE SalePrice < $300k)

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

# Renovasyon Yaşı
RemodAge = YrSold - YearRemodAdd

# Toplam Banyo
TotalBathrooms = FullBath + 0.5*HalfBath + BsmtFullBath + 0.5*BsmtHalfBath

# Toplam Veranda Alanı
TotalPorchSF = OpenPorchSF + EnclosedPorch + ScreenPorch
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
        ('encoder', OneHotEncoder(handle_unknown='ignore', sparse_output=False))
    ]), categorical_features)
])

model = Pipeline([
    ('preprocessor', preprocessor),
    ('regressor', Ridge(alpha=10.0))
])
```

## 🐛 Yaygın Sorunlar ve Çözümleri

| Sorun | Çözüm |
|-------|-------|
| `ModuleNotFoundError` | `pip install --break-system-packages <paket-adı>` |
| `FileNotFoundError` | `pwd` ile dizini kontrol et, doğru klasörde olduğundan emin ol |
| `NameError` | Kernel'ı restart et, hücreleri sırayla çalıştır |
| Grafikler görünmüyor | Terminal yerine notebook arayüzünde (VS Code/Jupyter) çalıştır |
| SHAP hesaplama yavaş | Büyük veri setleri için normal; bekle veya örnek boyutunu azalt |

## 🔍 Hata Analizi Bulguları

Model çok büyük evlerde (>4,000 sq ft) zorluk çekiyor:
- **Ev 1** (Crawfor, 2,752 sq ft): $62,734 eksik tahmin (%20.1)
- **Ev 2** (CollgCr, 4,056 sq ft): $55,272 fazla tahmin (%20.0)
- **Ev 3** (NAmes, 4,446 sq ft): $52,373 fazla tahmin (%21.5)

**Temel Neden:** Lineer modeller premium mahallelerdeki ve çok büyük evlerdeki non-lineer fiyatlamayı yakalamakta zorlanıyor.

## 📊 Test Verisi Tahminleri

- **Tahmin sayısı:** 1,459 ev
- **Fiyat aralığı:** $45,903 - $1,755,851
- **Ortalama tahmin:** $179,602
- **Medyan tahmin:** $156,632
- **Tüm kalite kontrolleri:** ✅ Geçti

## 📝 Teslim Edilecek Dosyalar

- ✅ `week3-houseprices-miracorhan.ipynb` - Tüm çıktıları içeren notebook (İngilizce)
- ✅ `week3-houseprices-miracorhan_TR.ipynb` - Türkçe versiyonu
- ✅ `submission_miracorhan.csv` - Kaggle submission dosyası (1,459 tahmin)
- ✅ `report_miracorhan.md` - Kapsamlı final rapor

## 🔗 Bağlantılar

- [Kaggle Yarışması](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
- [Veri Seti İndir](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/data)
- [Leaderboard](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/leaderboard)

## 📖 Ek Dökümanlar

- **CALISTIRMA_KILAVUZU.md** - Detaylı çalıştırma talimatları (Türkçe)
- **CLAUDE.md** - Claude Code için teknik rehber (İngilizce)
- **Homework.md** - Ödev gereksinimleri ve değerlendirme kriterleri
- **data_description.txt** - 79 özelliğin detaylı açıklamaları
- **report_miracorhan.md** - Detaylı analiz içeren kapsamlı final rapor
- **README.md** - Bu dökümanın İngilizce versiyonu

## 🎯 Proje Öne Çıkanları

**Veri İşleme:**
- 1,460 eğitim gözlemi (outlier temizliği sonrası)
- 79 özellik (preprocessing sonrası 36 sayısal, 43 kategorik)
- Güçlü tahmin gücüne sahip 5 türetilmiş özellik

**Model Performansı:**
- Ridge Regression: Yorumlanabilirlik ve performans dengesi en iyi
- RandomForest: Ciddi overfitting (oran: 0.34)
- GradientBoosting: Orta seviye overfitting (oran: 0.58)

**Üretime Hazır:**
- 13 pipeline adımının tamamı uygulandı (A'dan M'ye)
- Model yorumlanabilirliği için SHAP analizi
- Kapsamlı hata analizi
- Test tahminleri doğrulandı ve makul sınırlar içinde

## 👤 Geliştirici

**Miraç Orhan**
AI Engineering - Week 3 Project
Tarih: Ocak 2026

---

## 📄 Lisans

Bu proje eğitim amaçlı geliştirilmiştir. Veri seti [Dean De Cock](http://jse.amstat.org/v19n3/decock.pdf) tarafından oluşturulmuş ve Kaggle tarafından barındırılmaktadır.

---

**⭐ Projeyi beğendiyseniz yıldız vermeyi unutmayın!**
