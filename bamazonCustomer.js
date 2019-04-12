var mysql = require("mysql");
var prompt = require("prompt");
var inquirer = require("inquirer");
var Table = require('cli-table');






var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Newph0ne0112",
    database: "bamazon",
    port: 3306 

});

const lookAndPurchase2 = function () {
    
    connection.query('SELECT * FROM products', function (err, res) {
        const table = new Table({
            head: ['ID', 'Product Name', 'Department', 'Price', 'Stock Quantity']
        });
        
        console.log("Check out the table: ");
        console.log("====================");
        for (var i = 0; i < res.length; i++) {
            table.push([res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]);
        }
        console.log("-------------------");

        console.log(table.toString());
        inquirer.prompt([{
            name: "itemId",
            type: "input",
            message: "Whats the item ID of your choice?",
            validate: function (value) {
                if (isNaN(value) === false) {
                    return true;
                } else {
                    return false;
                }
            }
        }, {
            name: "Quantity",
            type: "input",
            message: "How many are you buying?",
            validate: function (value) {
                if (isNaN(value) === false) {
                    return true;
                } else {
                    return false;
                }
            }


        

            }]).then(function (answer) {
                const choiceId = answer.itemId
                const choiceProduct = res[choiceId]
                const choiceQuantity = answer.Quantity
                const stockQuantity = res[choiceId - 1].stock_quantity
                if (choiceQuantity < stockQuantity) {
                    console.log("Your total for " + "(" + answer.Quantity + ")" + " - " + res[choiceId].product_name + " is: " + res[choiceId].price * choiceQuantity);
                    connection.query("UPDATE products SET ? WHERE ?", [{
                        stock_quantity: stockQuantity - choiceQuantity
                    }, {
                            item_id: choiceId
                        }], function(err, res) {
                            //console.log(err);
                            lookAndPurchase2();
                    
                    });

                } else {
                    console.log("Sorry, we're all out. BUT, we do have " + res[choiceId].stock_quantity);
                    lookAndPurchase2();

                }

})


       



})



}

lookAndPurchase2();


