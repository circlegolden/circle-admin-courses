<template>
  <div>
    <template>
      <el-row>
      </el-row>
      <el-table
          :data="tableData"
          style="width: 100% ;margin-top: 10px;margin-left: 20px"
          :default-sort = "{prop: 'date', order: 'descending'}">
        <el-table-column prop="sno" label="学号" sortable width="100">
        </el-table-column>
        <el-table-column prop="name" label="姓名" width="100">
        </el-table-column>
        <el-table-column prop="sumxf" label="完成学分" sortable width="120">
        </el-table-column>
        <el-table-column prop="avggrade" label="均绩" sortable width="100" >
        </el-table-column>
      </el-table>
      <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="pageNum"
          :page-sizes="[5, 10, 15, 20]"
          :page-size="pageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :total="total"
          :background="true"
      >
      </el-pagination>
    </template>
  </div>
</template>

<script>
import request from "@/utils/request";
import axios from "axios";

export default {
  name: "Table_open",
  data() {
    return {
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 5,
    }
  },
  created(){
    //请求分页查询数据
    request.get("/admin/avgjidian" ,{
      params: {
        pageNum: this.pageNum,
        pageSize: this.pageSize,
      }
    }).then(res => {
      console.log(res)
      this.tableData=res.data;
      this.total=res.total;
    })
  },
  methods: {
    handleSizeChange(pageSize) {
      this.pageSize = pageSize;
      this.load();
    },
    handleCurrentChange(pageNum) {
      this.pageNum = pageNum;
      this.load();
    },
    load() {
      request.get("/admin/avgjidian", {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
        }
      }).then(res => {
        console.log(res)
        this.tableData = res.data;
        this.total = res.total;
      })
    }
  }

}
</script>

<style scoped>
.el-pagination.el-pager li.active {
  background-color: #545c64;
  color: #ffd04b;
}
</style>
