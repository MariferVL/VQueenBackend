import { v4 as uuid } from "uuid";
import { db } from "../database";


export const createNewMenuRoute = {
    method: 'POST',
    path: '/api/menu',
    handler: async (req, h) => {
        const idmenu = 'VQ23' + uuid();
        console.log('req.payload in create: ' , req.payload);
        const { name = '', imgRelPath = '', description = '', ingredients = '', allergens = '', price = 0 } = req.payload;
        const userId = '12345';
        const sales = 0;

        await db.query(`
            INSERT INTO menu (idmenu, name, imgRelPath, description, ingredients, allergens, price, sales)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?); 
            `,
            [idmenu, name, imgRelPath, description, ingredients, allergens, price, sales]
        );
        return {idmenu, name, imgRelPath, description, ingredients, allergens, price, sales};

    }
}
