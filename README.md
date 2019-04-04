I created an Amazon-like storefront app, called Bamazon, using the Prompt Package, MySQL, and the MySQL NPM Package.

This app takes in orders from customers and subtracts from the store's total supplies.

The app first will display a list of all of the available products, current stock, and their costs. 

item_id	product_name	department_name	price	stock_quantity
1	Timberland	boots	190	20
2	Cole Haan	boots	230	15
3	Levis	clothing	65	25
4	Zara Crewneck	clothing	40	30
5	Zara Hoodie	clothing	35	20
6	Raybans	accessories	190	20
7	New Era Hat	accessories	45	18
8	Belt	accessories	35	10
9	Cuban Link Chain	jewelry	350	9
10	Tommy Jacket	clothing	175	15

The app asks the following things from the user.

product ID
the quantity the user wants to purchase 




The app will show the stock before your purchase, what item you choose, how qunatity, and the item cost.

Then it will show the total cost and ask if you want to purchase another item. 


It must be ran in the terminal.

Type in node main.js to start the app.

These are the npm packages I used and are needed to run the app

prompt
mysql
fs package in node

to install these npm packages run the following command.

npm install 
npm install prompt
npm install mysql