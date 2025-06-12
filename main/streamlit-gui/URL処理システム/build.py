#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
URL処理システム用シンプルビルドスクリプト
"""

import os
import subprocess
import shutil
from pathlib import Path

def clean_build_files():
    """以前のビルドファイルをクリーンアップ"""
    print("🧹 以前のビルドファイルをクリーンアップ中...")
    
    cleanup_targets = ['dist', 'build', '__pycache__']
    cleanup_files = [f for f in os.listdir('.') if f.endswith('.spec')]
    
    for target in cleanup_targets:
        if os.path.exists(target):
            shutil.rmtree(target)
            print(f"  ✅ {target} を削除しました")
    
    for file in cleanup_files:
        if os.path.exists(file):
            os.remove(file)
            print(f"  ✅ {file} を削除しました")

def build_executable():
    """実行ファイルをビルド"""
    print("🔨 実行ファイルをビルド中...")
    
    # PyInstallerコマンド
    cmd = [
        'pyinstaller',
        '--onefile',
        '--console',
        '--name', 'URL処理システム',
        '--hidden-import=requests',
        '--hidden-import=urllib3',
        '--hidden-import=certifi',
        '--hidden-import=charset_normalizer',
        '--hidden-import=idna',
        '--hidden-import=pandas',
        '--hidden-import=openpyxl',
        '--hidden-import=numpy',
        '--noconfirm',
        '--clean',
        'main.py'
    ]
    
    print("実行コマンド:")
    print(' '.join(cmd))
    print()
    
    try:
        result = subprocess.run(cmd, check=True)
        print("✅ ビルド成功!")
        return True
    except subprocess.CalledProcessError as e:
        print(f"❌ ビルドエラー: {e}")
        return False

def verify_build():
    """ビルド結果を検証"""
    print("🔍 ビルド結果を検証中...")
    
    exe_path = Path('dist') / 'URL処理システム.exe'
    
    if exe_path.exists():
        file_size = exe_path.stat().st_size
        file_size_mb = file_size / (1024 * 1024)
        
        print(f"✅ 実行ファイルが作成されました")
        print(f"  📁 パス: {exe_path}")
        print(f"  📊 サイズ: {file_size_mb:.1f} MB")
        return True
    else:
        print("❌ 実行ファイルが見つかりません")
        return False

def main():
    """メイン処理"""
    print("🚀 URL処理システム シンプルビルドスクリプト")
    print("=" * 60)
    
    # main.pyファイルの存在確認
    if not Path('main.py').exists():
        print("❌ main.py が見つかりません")
        return False
    
    # ステップ1: クリーンアップ
    clean_build_files()
    
    # ステップ2: ビルド実行
    if not build_executable():
        return False
    
    # ステップ3: 検証
    if not verify_build():
        return False
    
    print("\n🎉 ビルド完了!")
    print("=" * 60)
    print("📁 実行ファイル: dist/URL処理システム.exe")
    
    return True

if __name__ == "__main__":
    try:
        success = main()
        if success:
            input("\n⏸️ Enterキーを押して終了...")
        else:
            input("\n❌ エラーが発生しました。Enterキーを押して終了...")
    except KeyboardInterrupt:
        print("\n\n⏹️ ユーザーによって中断されました")
    except Exception as e:
        print(f"\n💥 予期しないエラー: {e}")
        input("Enterキーを押して終了...")