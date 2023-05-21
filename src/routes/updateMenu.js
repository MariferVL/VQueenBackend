import { db } from "../database";

export const updateMenuRoute = {
    method: 'POST',
    path: '/api/menu/{id}',
    handler: async (req, h) => {
        const { id } = req.params;
        console.log('req.payload: ',req.payload);
        const { name, imgRelPath, description, ingredients, allergens, price } = req.payload;
        console.log('name, imgRelPath, description, ingredients, allergens, price: ', name, imgRelPath, description, ingredients, allergens, price);
        const adminId = 'VQ237865';
        await db.query(
            `
            UPDATE menu 
                SET name=?, imgRelPath=?, description=?, ingredients=?, allergens=?, price=?
                WHERE idmenu=? AND admin_id=?
            `, [name, imgRelPath, description, ingredients, allergens, price, id, adminId]);

        const { results } = await db.query(`
                SELECT * FROM menu WHERE idmenu=? AND admin_id=?`,
            [id, adminId],

        );
        console.log('results: ', results);

        return results[0];

    }
} 