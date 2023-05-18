import Boom from "@hapi/boom";
import { db } from "../database";

export const getMenuRoute = {
    method: 'GET',
    path: '/api/menu/{id}',
    handler: async (req, h) => {
        const id = req.params.id;
        const { results } = await db.query(
            'SELECT * FROM menu WHERE idmenu=?',
            [id], 
        ); 
        const menu =  results[0];
        if (!menu) throw Boom.notFound(`Menu does not exist with id ${id}`);
        return menu;

    }

}