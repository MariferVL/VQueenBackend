import { db } from "../database";


export const addSoldToMenuRoute = {
    method: 'POST',
    path: '/api/menu/{id}/sold',
    handler: async (req, h) => {
        const id = req.params.id;
        await db.query(
            'UPDATE menu SET sold=sold+1 WHERE idmenu=?',
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