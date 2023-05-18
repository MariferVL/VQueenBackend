import { db } from "../database";

export const getUserMenuRoute = {
    method: 'GET',
    path: '/api/users/{userId}/menus',
    handler: async (req, h) => {
        const userId = req.params.userId;

        const { results } =  await db.query(
            'SELECT * FROM menu WHERE user_Id=?',
            [userId]
        )
    }
}