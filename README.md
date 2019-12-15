# TodoList-Ethereum
Prerequisites to run this application:
1. Install Node from https://nodejs.org/en/download/
2. To ensure node is install properly, type the following in your Command Prompt/Terminal: node -v 
3. Download Ganache from https://www.trufflesuite.com/ganache. This will be your personal blockchain.
4. Download the Truffle Framework. This will help you develop, test and deploy your smart contract. Type the following in your Command Prompt/Terminal: npm install -g truffle@5.0.2
5. Download the Metamask extension for Chrome from https://metamask.io/ .It allows you to run Ethereum dApps right in your browser without running a full Ethereum node.
6. Clone this project and change the directory to where the project is stored. Type the following in your Command Prompt/Terminal: npm install. This will install all the required dependencies.
7. To use Ganache, open the Ganache application -> New Workspace -> Add an appropriate workspace name -> Click on Add project -> Locate the cloned project and click on the truffle-config.js file -> Save Workspace
8. To set up Metamask, click on the fox icon in the extension tab of your Chrome browser -> Create an account -> Click on Custom RPC for the Networks list -> Set Network Name to Private Network -> Set New RPC Url to HTTP://127.0.0.1:7545 -> Once this network is selected, click on Import Account from the Account Icon -> Paste the private key of the first account of Ganache

To compile the smart contract, type the following in your Command Prompt/Terminal:  truffle compile

To migrate your smart contract so that it connects to ganache, type the following in your Command Prompt/Terminal: truffle migrate

To run the test cases of your smart contract, type the following in your Command Prompt/Terminal: truffle test

To run the project: npm run dev

