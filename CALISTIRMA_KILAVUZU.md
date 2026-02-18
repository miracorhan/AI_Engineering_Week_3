# 📘 Notebook Çalıştırma Kılavuzu

## ⚠️ ÖNEMLİ

Notebook'u **otomatik** çalıştırma sırasında hücre bağımlılık sorunları yaşandı.
**El ile çalıştırma** daha güvenilir ve hızlıdır.

---

## ✅ ÖNERİLEN YÖNTEM: VS Code veya Jupyter ile Manuel Çalıştırma

### Yöntem 1: VS Code (EN KOLAY)

1. **VS Code'u aç**
2. **Notebook'u aç**:
   - Türkçe: `week3-houseprices-miracorhan_TR.ipynb`
   - İngilizce: `week3-houseprices-miracorhan.ipynb`
3. **Python kernel seç**: Sağ üstten "Select Kernel" → Python 3.12 seç
4. **Çalıştır**:
   - Tek hücre: Hücrenin yanındaki ▶️ butonuna tıkla
   - Tüm hücreler: Üstteki **"Run All"** butonuna bas
5. **Bekle**: ~2-5 dakika (model eğitimi için)
6. **Kontrol et**: En son `submission_miracorhan.csv` oluştu mu?

```bash
ls -lh submission_miracorhan.csv
```

---

### Yöntem 2: Jupyter Notebook (Tarayıcıda)

```bash
# Terminal'de çalıştır:
cd /home/slayer/house-prices-advanced-regression-techniques
jupyter notebook
```

1. Tarayıcıda notebook açılacak
2. Notebook dosyasına tıkla:
   - Türkçe: `week3-houseprices-miracorhan_TR.ipynb`
   - İngilizce: `week3-houseprices-miracorhan.ipynb`
3. Üstteki menüden: **Kernel → Restart & Run All**
4. **"Restart and Run All Cells"** butonuna tıkla
5. ~2-5 dakika bekle
6. Submission dosyasını kontrol et

---

### Yöntem 3: JupyterLab (Modern Arayüz)

```bash
cd /home/slayer/house-prices-advanced-regression-techniques
jupyter lab
```

1. Sol panelden notebook'u aç
2. Üstten: **Run → Run All Cells**
3. Bekle
4. Submission dosyası oluştu mu kontrol et

---

## 🔍 Çalışma Sonrası Kontrol

### 1. Submission Dosyası Oluştu mu?

```bash
cd /home/slayer/house-prices-advanced-regression-techniques

# Dosya var mı?
ls -lh submission_miracorhan.csv

# İçeriği doğru mu?
head -10 submission_miracorhan.csv

# Satır sayısı 1460 mı?
wc -l submission_miracorhan.csv
```

**Beklenen çıktı:**
```
Id,SalePrice
1461,169277.05
1462,187758.39
...
1460 submission_miracorhan.csv
```

### 2. Hata Varsa Ne Yapmalı?

**Hata Tipi 1: ModuleNotFoundError**
```bash
# Eksik kütüphaneyi yükle
pip3 install --break-system-packages <paket-adı>
```

**Hata Tipi 2: FileNotFoundError**
```bash
# Çalışma dizinini kontrol et
pwd  # /home/slayer/house-prices-advanced-regression-techniques olmalı

# Gerekli dosyalar var mı?
ls -la *.csv
```

**Hata Tipi 3: NameError (değişken tanımlı değil)**
- Kernel'ı restart et: **Kernel → Restart & Run All**
- Hücreleri sırayla çalıştır (hepsi bir kerede değil)

---

## 📊 Beklenen Sonuçlar

### Model Performansı (Notebook çıktısından)

| Metrik | Değer |
|--------|-------|
| CV RMSE Mean | ~0.11436 |
| CV RMSE Std | ~0.00581 |
| En İyi Model | Ridge Regression |
| Train RMSE | ~0.095 |
| Valid RMSE | ~0.121 |

### Submission Dosyası

- **Dosya Adı**: `submission_miracorhan.csv`
- **Satır Sayısı**: 1460 (1 header + 1459 tahmin)
- **Sütunlar**: Id, SalePrice
- **Fiyat Aralığı**: ~$50,000 - ~$600,000

---

## 🚀 Kaggle'a Gönderme

### 1. Submission Dosyasını Al

```bash
# Dosyayı Windows'a kopyala (WSL kullanıyorsan)
cp submission_miracorhan.csv /mnt/c/Users/<KullanıcıAdın>/Downloads/
```

### 2. Kaggle'a Yükle

1. https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques
2. **"Submit Predictions"** butonuna tıkla
3. `submission_miracorhan.csv` dosyasını sürükle-bırak
4. **"Make Submission"** tıkla
5. Skorunu bekle! (~30 saniye)

### 3. Yarışma Sonuçları ✅

**Elde Edilen Skor:**
- **Kaggle Skoru (RMSLE):** **0.13409** 🎯
- **Beklenen Aralık:** 0.11 - 0.13 (CV'ye göre)
- **Sıralama:** **2082** / ~4500+ takım
- **Yüzdelik Dilim:** İlk %46

**Kaggle Notebook:** [Kaggle'da Görüntüle](https://www.kaggle.com/code/miracorhan/week3-houseprices-miracorhan/notebook)

**GitHub Deposu:** [Kaynak Kodlar](https://github.com/miracorhan/AI_Engineering_Week_3)

---

## 🎯 Sorun Giderme

### Problem: Jupyter açılmıyor

**Çözüm:**
```bash
# Jupyter kurulu mu kontrol et
which jupyter

# Kurulu değilse yükle
pip3 install --break-system-packages jupyter
```

### Problem: Kernel başlatılamıyor

**Çözüm:**
```bash
# ipykernel yükle
pip3 install --break-system-packages ipykernel

# Kernel'ı kaydet
python3 -m ipykernel install --user --name python3 --display-name "Python 3"
```

### Problem: Display()/show() çalışmıyor

**Çözüm:**
- Bu normal, terminal'de grafikler gösterilemiyor
- Notebook arayüzünde (VS Code/Jupyter) görüntülenecek

---

## 📝 Özet

✅ **En Kolay Yöntem**: VS Code'da notebook'u aç, "Run All" bas
✅ **Alternatif**: Jupyter Notebook → Kernel → Restart & Run All
✅ **Sonuç**: `submission_miracorhan.csv` oluşacak
✅ **Son Adım**: Kaggle'a yükle, skoru al

---

**Tüm dosyalar hazır!**
- ✅ `week3-houseprices-miracorhan.ipynb` (İngilizce, 65+ hücre)
- ✅ `week3-houseprices-miracorhan_TR.ipynb` (Türkçe, 65+ hücre)
- ✅ `report_miracorhan.md` (formal rapor, İngilizce)
- ✅ Tüm kodlar düzeltildi
- ✅ Kütüphaneler yüklendi

**Sadece notebook'u çalıştır ve Kaggle'a gönder!** 🚀

---

**Sorularınız için:**
- Kod hataları: Hücreyi tek tek çalıştır, hatayı oku
- Dosya bulunamıyor: `pwd` ile dizini kontrol et
- Paket eksik: `pip3 install --break-system-packages <paket>`

İyi çalışmalar! 🎉
