<template>
  <div class="admin">
    <el-container >
      <el-header style="margin-left: -20px">
        <Header></Header>
      </el-header>
      <el-container>
        <el-aside style="width: 200px">
          <Aside></Aside>
        </el-aside>
        <el-main style="margin-left: 20px">
          <router-view style="margin-top: 10px"/>
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script>
import Aside from "@/components/Aside";
import Header from "@/components/Header";

export default {
  name: "Admin",
  components: {
    Aside,
    Header,
  },
}
</script>

<style scoped>

</style>