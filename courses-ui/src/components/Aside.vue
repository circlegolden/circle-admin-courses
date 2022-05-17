<template>
<div >
  <el-row class="tac">
      <el-menu style="min-height: 100vh;width: 200px"
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          background-color="#545c64"
          text-color="#fff"
          active-text-color="#ffd04b"
          router>
        <el-submenu index="1">
          <template slot="title">
            <i class="el-icon-user-solid"></i>
            <span>人员信息管理</span>
          </template>
          <el-menu-item-group>
            <el-menu-item index="/Table_stu">学生信息</el-menu-item>
            <el-menu-item index="/Table_tea">教师信息</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
        <el-menu-item index="/Table_courses">
          <i class="el-icon-s-management"></i>
          <span slot="title">课程信息</span>
        </el-menu-item>
        <el-menu-item index="/Table_open" >
          <i class="el-icon-bank-card"></i>
          <span slot="title">开课情况</span>
        </el-menu-item>
        <el-menu-item index="/Table_grade" >
          <i class="el-icon-bank-card"></i>
          <span slot="title">学生成绩</span>
        </el-menu-item>
        <el-menu-item index="/Table_del">
          <i class="el-icon-message-solid"></i>
          <span slot="title">退课工单</span>
        </el-menu-item>
        <el-menu-item index="/Table_data">
          <i class="el-icon-message-solid"></i>
          <span slot="title">数据统计</span>
        </el-menu-item>
        <el-menu-item index="/Change_pwd">
          <i class="el-icon-menu"></i>
          <span slot="title">修改密码</span>
        </el-menu-item>
      </el-menu>
  </el-row>
</div>
</template>

<script>
export default {
  name: "Aside",
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    }
  }
}
</script>

<style scoped>

</style>