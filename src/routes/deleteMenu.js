import { db } from "../database";

export const deleteMenuRoute = {
  method: 'DELETE',
  path: '/api/menu/{id}',
  handler: async (req, h) => {
    const { id } = req.params;
    const adminId = 'VQ237865';

    try {
      await db.query('DELETE FROM menu WHERE idmenu = ?', [id]);
      return { message: `Product deleted successfully!`};
    } catch (error) {
      console.error('Error deleting menu item:', error);
      return h.response('Internal Server Error').code(500);
    }
  }
};
