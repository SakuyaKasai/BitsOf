[200~#!/bin/bash

echo "🚀 BitsOf プロジェクト構造整理（main/templates/archive構造）"
echo "=" * 60

# 現在のディレクトリ確認
# echo "📂 現在のディレクトリ: $(pwd)"
#
# # 新しいディレクトリ構造作成
# echo "📁 ディレクトリ構造作成中..."
# mkdir -p main/batch-excel-processors
# mkdir -p templates
# mkdir -p archive
#
# echo "  ✅ main/batch-excel-processors/ 作成"
# echo "  ✅ templates/ 作成"
# echo "  ✅ archive/ 作成"
#
# # システムディレクトリを移動
# echo "📦 システムディレクトリ移動中..."
# [ -d "URL処理システム" ] && git mv "URL処理システム" "main/batch-excel-processors/" && echo "  ✅ URL処理システム → main/batch-excel-processors/"
# [ -d "顧客ID処理システム" ] && git mv "顧客ID処理システム" "main/batch-excel-processors/" && echo "  ✅ 顧客ID処理システム → main/batch-excel-processors/"
# [ -d "コメント処理システム" ] && git mv "コメント処理システム" "main/batch-excel-processors/" && echo "  ✅ コメント処理システム → main/batch-excel-processors/"
#
# # build_all.py移動
# [ -f "build_all.py" ] && git mv "build_all.py" "main/batch-excel-processors/" && echo "  ✅ build_all.py → main/batch-excel-processors/"
#
# # プロジェクト用README.md作成
# echo "📝 プロジェクト用README.md作成中..."
# cat > "main/batch-excel-processors/README.md" << 'EOF'
# # Excel バッチ処理システム群
#
# Excelファイルを使用したバッチ処理システムのコレクション
#
# ## 🔧 システム構成
#
# ### URL処理システム
# - **機能**: URLからタイトル、ディスクリプション、キーワードを取得
# - **入力**: ExcelファイルのURL一覧
# - **出力**: 処理結果Excel
#
# ### 顧客ID処理システム
# - **機能**: 顧客データの処理・変換
# - **入力**: 顧客IDを含むExcelファイル
# - **出力**: 処理済み顧客データ
#
# ### コメント処理システム
# - **機能**: コメントデータの解析・処理
# - **入力**: コメントデータExcel
# - **出力**: 解析結果Excel
#
# ## 🚀 使用方法
#
# ```bash
# # 環境構築
# pip install -r requirements.txt
# # または
# pip install -e .
#
# # 各システム実行
# cd "URL処理システム"
# python main.py
#
# # 実行ファイル作成
# python build.py
# ```
#
# ## 🛠️ 技術スタック
#
# - **Python 3.8+**
# - **pandas** - データ処理
# - **openpyxl** - Excel操作
# - **requests** - HTTP通信
# - **PyInstaller** - 実行ファイル化
#
# ## 📚 学習ポイント
#
# - Excel入出力処理
# - HTTP通信とWebスクレイピング
# - エラーハンドリング
# - Windows対応（signal問題解決）
# - PyInstallerによるexe化
# EOF
#
# # pyproject.toml作成
# echo "📝 pyproject.toml作成中..."
# cat > "main/batch-excel-processors/pyproject.toml" << 'EOF'
# [build-system]
# requires = ["setuptools>=45", "wheel"]
# build-backend = "setuptools.build_meta"
#
# [project]
# name = "batch-excel-processors"
# version = "1.0.0"
# description = "Excel batch processing systems collection"
# authors = [
#     {name = "SakuyaKasai", email = "s.ks.living@gmail.com"}
#     ]
#     readme = "README.md"
#     requires-python = ">=3.8"
#     license = {text = "MIT"}
#
#     dependencies = [
#         "pandas>=1.5.0",
#             "openpyxl>=3.1.0",
#                 "requests>=2.28.0",
#                     "pyinstaller>=5.0.0"
#                     ]
#
#                     [project.optional-dependencies]
#                     dev = [
#                         "pytest>=7.0.0",
#                             "black>=22.0.0",
#                                 "flake8>=4.0.0"
#                                 ]
#
#                                 [project.urls]
#                                 "Homepage" = "https://github.com/SakuyaKasai/BitsOf"
#                                 "Bug Reports" = "https://github.com/SakuyaKasai/BitsOf/issues"
#                                 "Source" = "https://github.com/SakuyaKasai/BitsOf"
#
#                                 [tool.setuptools.packages.find]
#                                 where = ["."]
#                                 include = ["*"]
#
#                                 [tool.black]
#                                 line-length = 88
#                                 target-version = ['py38']
#
#                                 [tool.pytest.ini_options]
#                                 testpaths = ["tests"]
#                                 python_files = "test_*.py"
#                                 python_classes = "Test*"
#                                 python_functions = "test_*"
#                                 EOF
#
#                                 # メインREADME.md作成
#                                 echo "📝 メインREADME.md作成中..."
#                                 cat > README.md << 'EOF'
#                                 # BitsOf - プログラミング学習リポジトリ
#
#                                 AIエンジニア学習過程で作成した様々なアプリケーションとツールのコレクション
#
#                                 ## 📁 プロジェクト構成
#
#                                 ```
#                                 BitsOf/
#                                 ├── main/                    # アクティブなプロジェクト
#                                 │   └── batch-excel-processors/  # Excelバッチ処理システム群
#                                 ├── templates/               # 再利用可能なテンプレート
#                                 ├── archive/                # 過去のプロジェクト
#                                 └── README.md
#                                 ```
#
#                                 ## 🔄 現在のプロジェクト
#
#                                 ### main/batch-excel-processors/
#                                 Excelファイルを使用したバッチ処理システム群
#
#                                 - **URL処理システム** - URLの情報取得・分析
#                                 - **顧客ID処理システム** - 顧客データの処理・変換  
#                                 - **コメント処理システム** - コメントデータの解析・処理
#
#                                 **技術スタック:** Python, pandas, openpyxl, requests, PyInstaller
#
#                                 ## 🚀 使用方法
#
#                                 ### 環境準備
#                                 ```bash
#                                 # リポジトリクローン
#                                 git clone https://github.com/SakuyaKasai/BitsOf.git
#                                 cd BitsOf
#
#                                 # プロジェクトディレクトリに移動
#                                 cd main/batch-excel-processors
#
#                                 # 仮想環境作成・有効化
#                                 python3 -m venv venv
#                                 source venv/bin/activate
#
#                                 # 依存関係インストール
#                                 pip install -e .
#                                 # または
#                                 pip install -r requirements.txt
#                                 ```
#
#                                 ### プロジェクト実行
#                                 ```bash
#                                 # URL処理システム
#                                 cd "URL処理システム"
#                                 python3 main.py
#
#                                 # 実行ファイル作成
#                                 python3 build.py
#                                 ```
#
#                                 ## 📚 学習記録
#
#                                 ### 2025-06-12: Excel バッチ処理システム開発
#                                 - ✅ Excel入出力処理
#                                 - ✅ URL情報取得・解析  
#                                 - ✅ PyInstallerによるexe化
#                                 - ✅ エラーハンドリング実装
#                                 - ✅ Windows対応（signal.alarm問題解決）
#                                 - ✅ プロジェクト構造整理
#
#                                 ## 🛠️ 今後の予定
#
#                                 ### templates/
#                                 - [ ] Python CLI アプリテンプレート
#                                 - [ ] Excel処理テンプレート
#                                 - [ ] PyInstaller ビルドテンプレート
#
#                                 ### 新しいプロジェクト
#                                 - [ ] Webスクレイピングツール
#                                 - [ ] データ可視化ダッシュボード
#                                 - [ ] 自動化スクリプト集
#                                 - [ ] API連携ツール
#
#                                 ## 📄 ライセンス
#
#                                 このリポジトリは学習目的で作成されています。
#                                 EOF
#
#                                 # テンプレートディレクトリの初期化
#                                 echo "📝 テンプレート作成中..."
#                                 mkdir -p templates/python-cli-app
#                                 mkdir -p templates/excel-processor
#                                 mkdir -p templates/pyinstaller-build
#
#                                 cat > templates/README.md << 'EOF'
#                                 # Templates
#
#                                 再利用可能なプロジェクトテンプレート集
#
#                                 ## 📁 テンプレート一覧
#
#                                 ### python-cli-app/
#                                 - CLIアプリケーションの基本構造
#                                 - argparse使用例
#                                 - ログ設定
#
#                                 ### excel-processor/
#                                 - Excel処理の基本パターン
#                                 - pandas + openpyxl使用例
#                                 - エラーハンドリング
#
#                                 ### pyinstaller-build/
#                                 - PyInstaller設定例
#                                 - build.py テンプレート
#                                 - 依存関係管理
#                                 EOF
#
#                                 # 結果表示
#                                 echo ""
#                                 echo "📋 新しい構造:"
#                                 tree . 2>/dev/null || find . -type d | sed 's|[^/]*/|  |g'
#
#                                 # Git状況確認
#                                 echo ""
#                                 echo "📊 Git状況:"
#                                 git status --short
#
#                                 echo ""
#                                 echo "🎉 構造整理完了！"
#                                 echo "次のコマンドでコミット・プッシュしてください:"
#                                 echo "git add ."
#                                 echo "git commit -m 'プロジェクト構造整理: main/templates/archive構造に移行、pyproject.toml追加'"
#                                 echo "git push origin dev"
#                                 EOF
