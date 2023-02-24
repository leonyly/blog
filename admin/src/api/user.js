import request from '@/utils/request/index'

export default {
  login(data) {
    return request.post('/api/user/login', data)
  },
  upload(data) {
    return request.postBlob('/api/upload', data)
  },

	getUserList(data) {
    return request.get('/api/user/list', data)
  },
  createUser(data) {
    return request.post('/api/user/register', data)
  },
  // updateUser(id, data) {
  //   return request.put(`/api/user/update/${id}`, data)
  // },
  deleteUser(id) {
    return request.delete(`/api/user/delete/${id}`)
  }
}
