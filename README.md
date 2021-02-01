# 🌌 Frontend Boilerplate with React, TypeScript
리액트 앱을 처음부터 만들기 위한 최고의 방법!	리액트 앱을 처음부터 만들기 위한 최고의 방법!
## 👀 라이브러리	## 👀 라이브러리
| 라이브러리               | 버전       |	| 라이브러리               | 버전       |
| ------------------------ | ---------- |	| ------------------------ | ---------- |
| react (with 🎣**Hooks**) | **^16.11** |	| react (with 🎣**Hooks**) | **^16.11** |
| react-dom                | **^16.11** |	| react-dom                | **^16.11** |
| react-router             | **^5.1**   |	| react-router             | **^5.1**   |
| react-scripts            | **3.3**    |	| react-scripts            | **3.3**    |
| styled-components        | **^4.4**   |	| styled-components        | **^4.4**   |
| typescript               | **3.6**    |	| typescript               | **3.6**    |
| antd                     | **4.1.5**  |


## 🔧 설정 파일들	## 🔧 설정 파일들


### 🖋 title	### 🖋 title
타이틀 수정을 위해서는 [index.html](/public/index.html)에서 현재 `React-TypeScript-Boilerplate`로 되어있는 부분들을 고쳐야합니다.	타이틀 수정을 위해서는 [index.html](/public/index.html)에서 현재 `React-TypeScript-Boilerplate`로 되어있는 부분들을 고쳐야합니다.
```html	```html
<meta	<meta
  name="apple-mobile-web-app-title"	  name="apple-mobile-web-app-title"
  content="React-TypeScript-Boilerplate"	  content="React-TypeScript-Boilerplate"
/>	/>
```	```
```html	```html
<title>React-TypeScript-Boilerplate</title>	<title>React-TypeScript-Boilerplate</title>
```	```
### 🦞 favicon	### 🦞 favicon
파비콘 수정을 위해서는 [asset](/public/asset)에 있는 기존의 이미지 파일들을 대체해야합니다. (현재는 🦞 이모지로 되어있습니다.)	파비콘 수정을 위해서는 [asset](/public/asset)에 있는 기존의 이미지 파일들을 대체해야합니다. (현재는 🦞 이모지로 되어있습니다.)
[FAVIC-O-MATIC](https://favicomatic.com/)에 접속하여 `Every damm size,sir!`를 선택하고 `Upload Your Image` 버튼을 클릭하여 필요한 이미지 파일이 들어있는 압축파일을 받습니다.	[FAVIC-O-MATIC](https://favicomatic.com/)에 접속하여 `Every damm size,sir!`를 선택하고 `Upload Your Image` 버튼을 클릭하여 필요한 이미지 파일이 들어있는 압축파일을 받습니다.
### 📄 .eslintrc.json	### 📄 .eslintrc.json
```json	```json
{	{
  "extends": [	  "extends": [
    "eslint:recommended",	    "eslint:recommended",
    "plugin:react/recommended",	    "plugin:react/recommended",
    "plugin:@typescript-eslint/recommended",	    "plugin:@typescript-eslint/recommended",
    "prettier/@typescript-eslint",	    "prettier/@typescript-eslint",
    "plugin:prettier/recommended"	    "plugin:prettier/recommended"
  ],	  ],
  "plugins": ["react", "@typescript-eslint", "prettier"],	  "plugins": ["react", "@typescript-eslint", "prettier"],
  "env": {	  "env": {
    "browser": true,	    "browser": true,
    "jasmine": true,	    "jasmine": true,
    "jest": true	    "jest": true
  },	  },
  "settings": {	  "settings": {
    "react": {	    "react": {
      "pragma": "React",	      "pragma": "React",
      "version": "detect"	      "version": "detect"
    }	    }
  },	  },
  "parser": "@typescript-eslint/parser"	  "parser": "@typescript-eslint/parser"
}	}
```	```
### 📄 tsconfig.json	### 📄 tsconfig.json
`tsconfig.json`에는 `TypeScript`의 [컴파일러 옵션](https://typescript-kr.github.io/pages/compiler-options.html)이 정의되어 있습니다.	`tsconfig.json`에는 `TypeScript`의 [컴파일러 옵션](https://typescript-kr.github.io/pages/compiler-options.html)이 정의되어 있습니다.
다음 커맨드를 통해 가장 기본적인 `tsconfig.json`를 생성할 수 있습니다.	다음 커맨드를 통해 가장 기본적인 `tsconfig.json`를 생성할 수 있습니다.
```shell	```shell
$ npx tsc --init	$ npx tsc --init
```	```
해당 프로젝트에서는 기본 옵션에서 수정된 `tsconfig.json`를 사용합니다.	해당 프로젝트에서는 기본 옵션에서 수정된 `tsconfig.json`를 사용합니다.
```json	```json
{	{
  "compilerOptions": {	  "compilerOptions": {
    "target": "es5",	    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],	    "lib": ["dom", "dom.iterable", "esnext"],
    "noImplicitAny": false,	    "noImplicitAny": false,
    "allowJs": true,	    "allowJs": true,
    "skipLibCheck": true,	    "skipLibCheck": true,
    "esModuleInterop": true,	    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,	    "allowSyntheticDefaultImports": true,
    "strict": true,	    "strict": true,
    "forceConsistentCasingInFileNames": true,	    "forceConsistentCasingInFileNames": true,
    "module": "esnext",	    "module": "esnext",
    "moduleResolution": "node",	    "moduleResolution": "node",
    "resolveJsonModule": true,	    "resolveJsonModule": true,
    "isolatedModules": true,	    "isolatedModules": true,
    "noEmit": true,	    "noEmit": true,
    "jsx": "react"	    "jsx": "react"
  },	  },
  "include": ["src"]	  "include": ["src"]
}	}
```	```
### 📄 tslint.json	### 📄 tslint.json
```json	```json
{	{
  "defaultSeverity": "error",	  "defaultSeverity": "error",
  "extends": ["tslint:recommended"],	  "extends": ["tslint:recommended"],
  "jsRules": {},	  "jsRules": {},
  "rules": {	  "rules": {
    "quotemark": false,	    "quotemark": false,
    "ordered-imports": false,	    "ordered-imports": false,
    "object-literal-sort-keys": false,	    "object-literal-sort-keys": false,
    "member-access": false	    "member-access": false
  },	  },
  "rulesDirectory": []	  "rulesDirectory": []
}	}
```	```
### 📄 .prettierrc	### 📄 .prettierrc
```json	```json
{	{
  "singleQuote": true,	  "singleQuote": true,
  "semi": true,	  "semi": true,
  "useTabs": false,	  "useTabs": false,
  "tabWidth": 2,	  "tabWidth": 2,
  "trailingComma": "all",	  "trailingComma": "all",
  "printWidth": 80,	  "printWidth": 80,
  "arrowParens": "always",	  "arrowParens": "always",
  "orderedImports": true	  "orderedImports": true
}	}
```	```
## Installation	## Installation
```	```
$ npm install	$ npm install
```	```
## Running	## Running
```	```
$ npm run start	$ npm run start
```	```
## Build	## Build
```	```
$ npm run build	$ npm run build
```	```
## Reference	## Reference
- [CRA(Create React App)에 tslint, eslint, prettier 적용하기](https://milooy.wordpress.com/2019/09/21/cracreate-react-app%ec%97%90-tslint-eslint-prettier-%ec%a0%81%ec%9a%a9%ed%95%98%ea%b8%b0/comment-page-1/#comment-2044)	- [CRA(Create React App)에 tslint, eslint, prettier 적용하기](https://milooy.wordpress.com/2019/09/21/cracreate-react-app%ec%97%90-tslint-eslint-prettier-%ec%a0%81%ec%9a%a9%ed%95%98%ea%b8%b0/comment-page-1/#comment-2044)
# License	# License
