<template>
  <div class="home">
    <el-container >
      <el-header style="margin-left: -20px">
        <Header></Header>
      </el-header>
      <el-container>
        <el-aside style="width: 200px">
          <Aside></Aside>
        </el-aside>
        <el-main style="margin-left: 20px">
          <Table_courses style="margin-top: 10px"></Table_courses>
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script>
// @ is an alias to /src


import Aside from "@/components/Aside";
import Header from "@/components/Header";
import Table_courses from "@/components/Table_courses";


export default {
  name: 'CoursesView',
  components: {
    Aside,
    Header,
    Table_courses
  },
  data(){
    return {
      input: ''
    }
  }
}
</script>
