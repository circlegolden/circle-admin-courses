<template>
  <div>
    <template>
      <el-row>
        <el-select v-model="termvalue"  filterable placeholder="请选择学期" style="margin-left: -900px">
          <el-option
              v-for="(value,key) in options"
              :key="value"
              :label="value"
              :value="value">
          </el-option>
        </el-select>
        <el-button type="primary" style="margin-left: 20px;width: 100px" @click="load">查询</el-button>
        <el-dialog title="成绩信息" :visible.sync="updateFormVisible">
          <el-form :model="updateLabelAlign"  label-width="80px">
            <el-form-item label="学号" style="width: 300px">
              <el-input v-model="updateLabelAlign.stuid" :disabled="true"></el-input>
            </el-form-item>
            <el-form-item label="姓名" style="width: 300px">
              <el-input v-model="updateLabelAlign.name" :disabled="true"></el-input>
            </el-form-item>
            <el-form-item label="课名" style="width: 300px">
              <el-input v-model="updateLabelAlign.couname" :disabled="true"></el-input>
            </el-form-item>
            <el-form-item label="课号" style="width: 300px">
              <el-input v-model="updateLabelAlign.couid" :disabled="true"></el-input>
            </el-form-item>
            <el-form-item label="学期" style="width: 300px" >
              <el-input v-model="updateLabelAlign.term" :disabled="true"></el-input>
            </el-form-item>
            <el-form-item label="平时成绩" style="width: 300px" >
              <el-input v-model="updateLabelAlign.usuper" ></el-input>
            </el-form-item>
            <el-form-item label="考试成绩" style="width: 300px" >
              <el-input v-model="updateLabelAlign.tesper" ></el-input>
            </el-form-item>
            <el-form-item label="总成绩" style="width: 300px" >
              <el-input v-model="updateLabelAlign.finper" ></el-input>
            </el-form-item>
            <el-form-item label="绩点" style="width: 300px" >
              <el-input v-model="updateLabelAlign.jidian" :disabled="true"></el-input>
            </el-form-item>
          </el-form>

          <div slot="footer" class="dialog-footer">
            <el-button @click="updateFormVisible = false">取 消</el-button>
            <el-button type="primary" @click="update">确 定</el-button>
          </div>
        </el-dialog>
      </el-row>
      <el-table
          :data="tableData"
          style="width: 100% ;margin-left: -20px;margin-top: 10px"
          :default-sort = "{prop: 'date', order: 'descending'}">
        <el-table-column prop="stuid" label="学号" sortable width="100">
        </el-table-column>
        <el-table-column prop="stuname" label="姓名" width="100">
        </el-table-column>
        <el-table-column prop="couid" label="课号" width="100">
        </el-table-column>
        <el-table-column prop="couname" label="课名" sortable width="120">
        </el-table-column>
        <el-table-column prop="term" label="学期" sortable width="120">
        </el-table-column>
        <el-table-column prop="teaid" label="工号" width="100" sortable >
        </el-table-column>
        <el-table-column prop="usuper" label="平时成绩" width="100" sortable >
        </el-table-column>
        <el-table-column prop="tesper" label="考试成绩" width="100" sortable >
        </el-table-column>
        <el-table-column prop="finper" label="总成绩" width="100" sortable >
        </el-table-column>
        <el-table-column prop="jidian" label="绩点" width="100" sortable >
        </el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button
                size="mini"
                @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          </template>
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
  name: "Table_grade",
  data() {
    return {
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 5,
      formLabelWidth: '120px',
      labelPosition: 'right',
      updateLabelAlign: {},
      updateFormVisible: false,
      options: [
      ],
      termvalue: ''
    }
  },
  created(){
    //请求分页查询数据
    request.get("/admin/pagestugrade" ,{
      params: {
        pageNum: this.pageNum,
        pageSize: this.pageSize,
        term: this.termvalue
      }
    }).then(res => {
      console.log(res)
      this.tableData=res.data;
      this.total=res.total;
    }),
      request.get("/admin/termlist").then(res=>{
        this.options=res
      })
  },
  methods: {
    load(){
      request.get("/admin/pagestugrade" ,{
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          term: this.termvalue
        }
      }).then(res => {
        console.log(res)
        this.tableData=res.data;
        this.total=res.total;
      })
    },
    handleSizeChange(pageSize) {
      this.pageSize=pageSize;
      this.load();
    },
    handleCurrentChange(pageNum) {
      this.pageNum=pageNum;
      this.load();
    },
    handleEdit(index, row) {
      this.updateLabelAlign=row;
      this.updateFormVisible = true;
    },
    update(){
      this.$confirm("是否确认修改该课程信息","提示",{
        iconClass: "el-icon-question",//自定义图标样式
        confirmButtonText: "确认",//确认按钮文字更换
        cancelButtonText: "取消",//取消按钮文字更换
        showClose: true,//是否显示右上角关闭按钮
        type: "warning",//提示类型  success/info/warning/error
      }).then(()=>{
        request.put("/admin/updatestugrade",this.updateLabelAlign).then(res =>{
          if (res){
            this.$message.success("更新成功！")
            this.updateFormVisible = false
          }else{
            this.$message.error("更新失败！")
          }
        });
      }).catch(()=> {
        this.$message.info("已取消该操作!")
      });
      this.load()
    },
  },
}
</script>

<style scoped>
.el-pagination.el-pager li.active {
  background-color: #545c64;
  color: #ffd04b;
}
</style>
