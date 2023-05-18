import { db } from "../database";


export const deleteMenuRoute = {
    method: 'DELETE',
    path: '/api/menu/{id}',
    handler: async (req, h) => {

        const { id } =  req.params;
        const { name, image, description, ingredients, allergens, price } = req.payload;
        const adminId = 'VQ237865';
       await db.query(
            `DELETE FROM menu WHERE idmenu=?`,
            [id],
        );

        return { message: 'Product deleted successfully!'}
    }
}