import { db } from "../database";

export const getAllMenuRoute = {
    method: 'GET',
    path: '/api/menu',
    handler: async (req,h) => {
        const { results } = await db.query(
            'SELECT * FROM menu'
        );
        return results;
        
    }
}