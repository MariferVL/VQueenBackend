import { fakeMenu } from "./fake-data";

export const getAllMenuRoute = {
    method: 'GET',
    path: '/api/menu',
    handler: (req,h) => {
        return fakeMenu;
    }
}