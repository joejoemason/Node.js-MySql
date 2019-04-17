# I created an Amazon-like storefront app, called Bamazon, using the Prompt Package, MySQL, and the MySQL NPM Package.


![Screenshots of working app]
(Images/Screenshot 2019-04-12 02.09.10.png)
(Images/Screenshot 2019-04-12 02.10.01.png)






This app takes in orders from customers and subtracts from the store's total supplies.

The app first will display a list of all of the available products, current stock, and their costs.

The table is broken up into 4 columns and the are: item_id, product_name, department_name price, stock_quantity

The app asks the following things from the user.

product ID
quantity the user wants to purchase

The app will show the stock before your purchase, what item you choose, how qunatity, and the item cost.

Then it will show the total cost and ask if you want to purchase another item.

# It must be ran in the terminal.

These are the npm packages I used and are needed to run the app


    body-parser
    cli-table
    colors
    devtool
    express
    express-handlebars
    inquirer
    mysql
    prompt
    sql

to install these npm packages run the following command.

npm install
# Type in node main.js to start the app.
