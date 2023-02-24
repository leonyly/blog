<template>
  <el-dialog
    :title="selectData.id ? '编辑用户' : '新增用户'"
    :visible.sync="status"
    :modal-append-to-body="false"
    width="700px"
  >
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" style="width: 300px">
      <el-form-item label="用户名" prop="username">
        <el-input v-model="ruleForm.username" width="400px" auto-complete="off"> </el-input>
      </el-form-item>
			<el-form-item label="邮箱" prop="email">
        <el-input v-model="ruleForm.email" width="400px" auto-complete="off"> </el-input>
      </el-form-item>
			<el-form-item label="密码" prop="password">
        <el-input v-model="ruleForm.password" width="400px" auto-complete="off"> </el-input>
      </el-form-item>
      <el-form-item label="创建时间" prop="createdAt" v-if="selectData.id">
        <div>{{ ruleForm.createdAt }}</div>
      </el-form-item>
      <el-form-item label="更新时间" prop="updatedAt" v-if="selectData.id">
        <div>{{ ruleForm.updatedAt }}</div>
      </el-form-item>
    </el-form>
    <div slot="footer" class="dialog-footer">
      <el-button @click="close(false)">取 消</el-button>
      <el-button type="primary" @click="submitForm('ruleForm')">确 定</el-button>
    </div>
  </el-dialog>
</template>

<script>
export default {
  name: 'aa',
  props: {
    showAddUpdate: Boolean,
    selectData: Object
  },
  data() {
    return {
      status: this.showAddUpdate,
      rules: {
        username: [{ required: true, message: '请输入用户名称', trigger: 'blur' }],
				email: [{ required: true, message: '请输入邮箱号', trigger: 'blur' }],
				password: [{ required: true, message: '请输入密码', trigger: 'blur' }]
      },
      ruleForm: {
        username: '',
        email: '',
        password: '',
      }
    }
  },
  created() {
    this.ruleForm = this.selectData
  },
  methods: {
    close(val = false) {
      this.$emit('close', val)
    },
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          this.submit()
        } else {
          console.log('error submit!!')
          return false
        }
      })
    },
    submit() {
      if (this.ruleForm.id) {
        this.update()
      } else {
        this.add()
      }
    },
    async add() {
      let params = {
        ...this.ruleForm
      }
      await this.$api.user.createUser(params)
      this.$message.success('创建成功')
      this.close(true)
    },
    async update() {
      let params = {
        ...this.ruleForm
      }
      await this.$api.user.updateCategory(this.ruleForm.id, params)
      this.$message.success('更新成功')
      this.close(true)
    }
  }
}
</script>

<style></style>
