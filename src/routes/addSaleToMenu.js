import { db } from "../database";

export const addSaleToMenuRoute = {
    method: 'POST',
    path: '/api/menu/{id}/sale',
    handler: async (req, h) => {
        const id = req.params.id;
        await db.query(
            'UPDATE menu SET sales=sales+1 WHERE idmenu=?',
            [id],
        );
        const { results } = await db.query(
            'SELECT * FROM menu WHERE idmenu=?',
            [id],
        );
        const updatedMenu = results[0];
        return updatedMenu;
    }
}