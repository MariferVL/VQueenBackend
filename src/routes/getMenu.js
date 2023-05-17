import { fakeMenu } from "./fake-data";

export const getMenuRoute = {
    method: 'GET',
    path: '/api/menu/{id}',
    handler: (req, h) => {
        const id = req.params.id;
        return fakeMenu.find(menu => menu.id === id);
    }

}