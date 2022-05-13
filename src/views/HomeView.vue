<template>
  <div class="home">
    <el-container >
      <el-header style="margin-left: -20px">
        <Header></Header>
      </el-header>
      <el-container>
        <el-aside>
          <Aside></Aside>
          </el-aside>
        <el-main style="margin-left:-20px">
          <Table_stu></Table_stu>
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script>
// @ is an alias to /src


import Aside from "@/components/Aside";
import Header from "@/components/Header";
import Table_stu from "@/components/Table_stu";



export default {
  name: 'HomeView',
  components: {
    Aside,
    Header,
    Table_stu
  }
}
</script>
