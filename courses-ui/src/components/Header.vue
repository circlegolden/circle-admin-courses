<template>
  <div>
    <el-menu
        style="width:1400px"
        :default-active="activeIndex2"
        class="el-menu-demo"
        mode="horizontal"
        @select="handleSelect"
        background-color="#545c64"
        text-color="#fff"
        active-text-color="#ffd04b">
      <el-menu-item index="1">管理员处理中心</el-menu-item>
      <el-submenu index="2">
        <template slot="title">我的工作台</template>
        <el-menu-item index="2-1" @click="quit">退出</el-menu-item>
        <el-menu-item index="2-2">{{ name }}</el-menu-item>
      </el-submenu>
    </el-menu>
  </div>

</template>

<script>
import request from "@/utils/request";
export default {
  name: "Header",
  data() {
    return {
      activeIndex: '1',
      activeIndex2: '1',
      name: localStorage.getItem("name").replace("\"","").replace("\"","")
    };
  },
  created() {

  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    quit(){
      this.$router.push("/");
    }
  }
}
</script>

<style scoped>

</style>