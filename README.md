# OCR連番管理システム

iPhoneやWebカメラで撮影した画像から券番号をリアルタイムに抽出し、管理するためのブラウザベースのアプリケーションです。

## 概要

このシステムは、チケットや金券などの物理的な券に記載された番号をOCR（光学文字認識）技術を用いてデジタルデータ化し、管理業務を効率化することを目的としています。撮影からデータ出力まで、すべての処理がブラウザ上で完結し、インターネット接続を必要としないローカル環境で動作します。

## 主な機能

- **カメラ入力**: スマートフォンまたはPCのWebカメラからリアルタイムに映像を取得。
- **OCR処理**: 映像内のフレームから券番号（英数字）を自動で抽出。
- **データ付与**: 認識した券番号に、任意の日付と店名を紐付け。
- **リアルタイム出力**: 抽出したデータを「券番号,日付,店名」の形式でテキストエリアに追記。
- **重複排除**: 一度読み取った券番号が再度出力されるのを防止。

## 技術スタック

本プロジェクトで使用する主要な技術は以下の通りです。

| カテゴリ | 技術/ライブラリ |
|---|---|
| 言語 | TypeScript |
| OCRエンジン | [Tesseract.js](https://tesseract.projectnaptha.com/) |
| UI | HTML / CSS |
| テスト | [Vitest](https://vitest.dev/) |
| Linter & Formatter | [Biome](https://biomejs.dev/) |
| コミット規約チェック | [Commitlint](https://commitlint.js.org/) |

## 開発環境のセットアップ

1. **リポジトリをクローンします:**
   ```bash
   git clone <repository-url>
   cd ocr
   ```

2. **依存関係をインストールします:**
   ```bash
   npm install
   ```

3. **開発サーバーを起動します:**
   ```bash
   npm run dev
   ```

## 利用可能なスクリプト

- `npm run format`: Biomeを使ってコードをフォーマットします。
- `npm run lint`: Biomeを使ってコードの静的解析を実行します。
- `npm run test`: Vitestを使ってユニットテストを実行します。

## 開発ガイドライン

開発に参加する際は、プロジェクトで定められた以下の規約に従ってください。

- **コミットメッセージ**: [Conventional Commits](https://www.conventionalcommits.org/) の仕様に準拠してください。`commitlint`により、規約が自動でチェックされます。
- **ブランチ戦略**: `main`ブランチから作業ブランチを作成し、開発完了後にプルリクエストを送信してください。

詳細は `docs/specifications.md` および `AGENTS.md` を参照してください。

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
