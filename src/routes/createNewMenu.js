import { v4 as uuid } from "uuid";
import { db } from "../database";


export const createNewMenuRoute = {
    method: 'POST',
    path: '/api/menu',
    handler: async (req, h) => {
        const id = 'VQ23' + uuid();
        const { name = '', image = '', description = '', ingredients = '', allergens = '', price = 0 } = req.payload;
        const userId = '12345';
        const sales = 0;

        await db.query(`
            INSERT INTO menu (idmenu, name, imgRelPath, description, ingredients, allergens, price, sales)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?); 
            `,
            [id, name, image, description, ingredients, allergens, price, sales]
        );

        return {id, name, image, description, ingredients, allergens, price, sales};

    }
}
