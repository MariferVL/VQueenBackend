import mysql from 'mysql';

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'VQAdmin',
    password: 'triumph2023',
    database: 'vqueen',

});

export const db = {
    connect: () => connection.connect(),
    //  MySQL driver currently only allows us to use callbacks to handle query results.
    query: (queryString, escapedValues) =>
        new Promise((resolve, reject) => {
            connection.query(queryString, escapedValues, (error, results, fields) => { 
                if (error) reject(error);
                resolve({ results, fields });     
            })
        }),
        end: () => connection.end(),
}
