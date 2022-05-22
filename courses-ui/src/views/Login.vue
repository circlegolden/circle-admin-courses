<template>
    <div class="login">
      <div class="login_center" style="width: 800px;margin-left: 300px;height: 500px;padding: 100px">
        <div class="en" style="background:#c4cbcf;height: 300px;width: 450px;opacity: 90%">
          <div style="color: darkslategrey; font-size: 30px; text-align: center; padding: 40px 0;">欢迎登录</div>
          <el-form ref="form" :model="form" label-width="80px">
            <el-form-item  prop="id">
              <el-input  prefix-icon="iconfont el-icon-user" placeholder="请输入学号/工号" v-model="form.id"/>
            </el-form-item>
            <el-form-item prop="password">
              <el-input prefix-icon="iconfont el-icon-lock" placeholder="请输入密码"  v-model="form.pwd" show-password/>
            </el-form-item>
            <el-button  type="info" @click="login">登 录</el-button>
          </el-form>
        </div>
      </div>
    </div>
</template>

<script>
import request from "@/utils/request";
export default {
  name: "login",
  data() {
    return {
      form: {
        id: '',
        pwd: ''
      }
    }
  },
  methods: {
    login(){
          request.post("/admin/login",this.form).then(res =>{
            if(res.code==0||res.code==1){
              this.$message.error(res.msg);
            }else{
              this.$message.success(res.msg);
              this.$router.push("/Admin");
              localStorage.setItem("name",JSON.stringify(res.name)) //存储用户信息
            }
          })
    }
  }
}
</script>

<style scoped>
.el-input{
  width: 300px;
  margin-left: -50px;
}
.el-button{
  width: 200px;
}
.login{
  background-image: url("../router/assets/login_back.jpg") ;
  width: 1200px;
  height: 600px;
  margin-left: 180px;
  margin-top: 30px;
  opacity: 80%;
}
</style>