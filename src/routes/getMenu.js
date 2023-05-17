import Boom from "@hapi/boom";
import { fakeMenu } from "./fake-data";

export const getMenuRoute = {
    method: 'GET',
    path: '/api/menu/{id}',
    handler: (req, h) => {
        const id = req.params.id;
        const menu =  fakeMenu.find(menu => menu.id === id);
        if (!menu) throw Boom.notFound(`Menu does not exist with id ${id}`);
        return menu;

    }

}