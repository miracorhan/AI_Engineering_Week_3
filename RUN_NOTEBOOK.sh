#!/bin/bash

echo "🚀 House Prices Notebook Execution Script"
echo "==========================================="
echo ""

cd /home/slayer/house-prices-advanced-regression-techniques

# Check if Python packages are available
echo "📦 Checking Python packages..."

if python3 -c "import pandas, numpy, sklearn, matplotlib, seaborn" 2>/dev/null; then
    echo "✅ All packages available!"
    echo ""
    
    # Option 1: Try with papermill if available
    if command -v papermill &> /dev/null; then
        echo "🔄 Executing with papermill..."
        papermill week3-houseprices-miracorhan.ipynb week3-houseprices-miracorhan-executed.ipynb
    # Option 2: Try with jupyter nbconvert
    elif command -v jupyter &> /dev/null; then
        echo "🔄 Executing with jupyter nbconvert..."
        jupyter nbconvert --to notebook --execute week3-houseprices-miracorhan.ipynb --inplace
    else
        echo "❌ Neither papermill nor jupyter found"
        echo "Please install: pip install jupyter nbconvert"
        exit 1
    fi
    
    # Check result
    if [ -f "submission_miracorhan.csv" ]; then
        echo ""
        echo "✅ SUCCESS! Submission file created!"
        echo ""
        wc -l submission_miracorhan.csv
        echo ""
        echo "First 5 lines:"
        head -5 submission_miracorhan.csv
    else
        echo ""
        echo "⚠️  Submission file not found. Check for errors above."
    fi
    
else
    echo "❌ Required packages not installed!"
    echo ""
    echo "📥 Installing packages (this may take a few minutes)..."
    echo ""
    
    # Try with --break-system-packages (needed for some systems)
    pip3 install --break-system-packages pandas numpy scikit-learn matplotlib seaborn shap jupyter nbconvert
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Packages installed! Re-run this script to execute notebook."
    else
        echo ""
        echo "❌ Installation failed. Try manual installation:"
        echo "   pip3 install pandas numpy scikit-learn matplotlib seaborn shap jupyter"
    fi
fi

