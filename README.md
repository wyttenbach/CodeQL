## Copilot
Moving from Fortify to CodeQL involves several steps:
- Understand CodeQL: CodeQL is a semantic code analysis engine developed by GitHub. It treats code like data, allowing you to find potential vulnerabilities in your code. It supports both compiled and interpreted languages.
- Setup CodeQL CLI: You need the CodeQL command-line interface (CLI) tool to create and configure databases. You can find the CLI, packs, and the Visual Studio Code plugin on the CodeQL tools page:
https://codeql.github.com/docs/codeql-overview/codeql-tools/
For help setting everything up, you can refer to the CodeQL CLI quick-start documentation:
https://docs.github.com/en/code-security/codeql-cli/getting-started-with-the-codeql-cli
- Create a CodeQL Database: CodeQL requires you to convert your codebase to a format recognisable by CodeQL, which they call a database. This is done using the CodeQL CLI.
- Run CodeQL Queries: Once you have a CodeQL database, you can run CodeQL queries on that database to identify problems in the codebase. The query results are shown as code scanning alerts in GitHub when you use CodeQL with code scanning.
- Customize CodeQL Queries: While there are many ready-made queries available, you can also create your own queries to meet your specific needs.
- Integrate with CI/CD: You can add CodeQL scans to your CI with GitHub Actions. Alternatively, you can run the CodeQL CLI directly in an external CI system and upload the results to GitHub.
Remember, the transition might require some time and resources as your team gets familiar with CodeQL and its features. It's also important to note that while Fortify and CodeQL both aim to identify security vulnerabilities in code, they might have different strengths and weaknesses depending on the specific use case and programming language. Therefore, a thorough evaluation of CodeQL's suitability for your specific needs is recommended before making the switch.
I hope this helps! If you have any more questions, feel free to ask. 😊
