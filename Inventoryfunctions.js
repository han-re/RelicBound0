
        //This gets the userId from the session storage
        let userId = sessionStorage.getItem("userId");



//This is to obtain the userInvId and store it in the userInvId variable below.
        async function fetchInventoryId(userId){

        let hostname = "localhost";
        let username = "ralex01";
        let password = "PVbhXXLBnWZY23x8";
        let database = "CSC1034_CW_47";
        let query = `SELECT userInvId FROM user_inventoryTable WHERE userId = ${userId}  LIMIT 1`;

        let params = new URLSearchParams();
            params.append('hostname', hostname);
            params.append('username', username);
            params.append('password', password);
            params.append('database', database);
            params.append('query', query);

            let url = 'https://ralex01.webhosting1.eeecs.qub.ac.uk/dbConnector.php';
            try {
                let response = await fetch(url, {
                    method: 'POST',
                    headers: {"Content-Type":"application/x-www-form-urlencoded"},
                    body: params
                }); // Waits for a response from the fetch

                if(!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);


                let result = await response.json(); // Waits for the JSON to be parsed

                if(result.data && result.data.length > 0){
                    userInvId = result.data[0].userInvId;
                    console.log("Fetched userInvId ID: ", userInvId);
                    return userInvId;
                }else{
                    console.log("No userInvId found for the given user.")
                }
            }catch (error){
                console.error("Error fetching inventoryId: ", error);
            }

        }
        async function insertIntoInventory(userId, itemId) {
            let userInvId = await fetchInventoryId(userId);
            if(!userInvId){
                console.error("Cannot insert item.");
                return;
            }

            
            console.log("new ID", userInvId)  
            //userInvId is correctly stored in userInvId
            
            
            //This part executes the INSERT query. It will insert the item into the database
        let hostname = "localhost";
        let username = "ralex01";
        let password = "PVbhXXLBnWZY23x8";
        let database = "CSC1034_CW_47";
        let query = `INSERT INTO inventoryTable (itemId, userInvId) VALUES ( 4, ${userInvId})`;

        let params = new URLSearchParams();
            params.append('hostname', hostname);
            params.append('username', username);
            params.append('password', password);
            params.append('database', database);
            params.append('query', query);

            console.log(params.toString());

            executeDatabaseQuery(params);
        

        async function executeDatabaseQuery(params) {
            let url = 'https://ralex01.webhosting1.eeecs.qub.ac.uk/dbConnector.php';
            try {
                let response = await fetch(url, {
                    method: 'POST',
                    headers: {"Content-Type":"application/x-www-form-urlencoded"},
                    body: params
                }); // Waits for a response from the fetch

                if(!response.ok) throw new Error(`HTTP error! Status: ${response.status}`);


                let result = await response.json(); // Waits for the JSON to be parsed

             

                // If an error has been returned, e.g. incorrect SQL syntax, display the error
                if (result.error) {
                    console.log(result.error.toString());
                }
                // If a dataset has been returned, e.g. from a SELECT statement, do something.
                else{
                    console.log("Successful");
                    if(result.affected_rows !== undefined){
                        console.log(`Affected Rows: ${result.affected_rows}`);
                    }
                }
               
                
            } catch (error) {
                console.error('Error parsing JSON:', error);
            }
        }

        }
        //Invoking the function
        insertIntoInventory(userId,4); //Make sure the itemId is the correct one corresponding to the ItemId table in the database
