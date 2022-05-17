<template>
  <div>
    <template>
      <el-row>
        <el-input v-model="name" suffix-icon="el-icon-search" placeholder="请输入关键词" style="margin-top:-5px;width: 250px;margin-left: -820px"></el-input>
        <el-button type="primary" style="margin-left: 20px;width: 100px" @click="load">姓名查询</el-button>

        <el-button type="primary" @click="handleadd">新增</el-button>
        <el-dialog title="学生个人信息" :visible.sync="dialogFormVisible">
          <el-form :model="formLabelAlign"  label-width="80px">
            <el-form-item label="学号" style="width: 300px">
              <el-input v-model="formLabelAlign.sno"></el-input>
            </el-form-item>

            <el-form-item label="姓名" style="width: 300px">
              <el-input v-model="formLabelAlign.name"></el-input>
            </el-form-item>

            <el-form-item label="性别">
              <el-select v-model="formLabelAlign.sex" placeholder="请选择性别" style="margin-left: -420px">
                <el-option label="女" value="女"></el-option>
                <el-option label="男" value="男"></el-option>
              </el-select>
            </el-form-item>

            <el-form-item label="出生日期">
            <el-date-picker type="date"
                            format="yyyy 年 MM 月 dd 日"
                            value-format="yyyy-MM-dd" placeholder="选择日期" v-model="formLabelAlign.birth" style="width: 300px;margin-left: -340px"></el-date-picker>
          </el-form-item>
            <el-form-item label="籍贯" style="width: 300px">
              <el-input v-model="formLabelAlign.hometown"></el-input>
            </el-form-item>
            <el-form-item label="联系方式" style="width: 300px">
              <el-input v-model="formLabelAlign.phone"></el-input>
            </el-form-item>
            <el-form-item label="院系" style="width: 300px">
              <el-input v-model="formLabelAlign.coll"></el-input>
            </el-form-item>
          </el-form>

          <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisible = false">取 消</el-button>
            <el-button type="primary" @click="add">确 定</el-button>
          </div>
        </el-dialog>

        <el-dialog title="学生个人信息" :visible.sync="updateFormVisible">
          <el-form :model="updateLabelAlign"  label-width="80px">
            <el-form-item label="学号" style="width: 300px">
              <el-input v-model="updateLabelAlign.sno" :disabled="true"></el-input>
            </el-form-item>

            <el-form-item label="姓名" style="width: 300px">
              <el-input v-model="updateLabelAlign.name"></el-input>
            </el-form-item>

            <el-form-item label="性别">
              <el-select v-model="updateLabelAlign.sex" placeholder="请选择性别" style="margin-left: -420px" :disabled="true">
                <el-option label="女" value="女"></el-option>
                <el-option label="男" value="男"></el-option>
              </el-select>
            </el-form-item>

            <el-form-item label="出生日期">
              <el-date-picker  format="yyyy 年 MM 月 dd 日"
                               value-format="yyyy-MM-dd" type="date" placeholder="选择日期" v-model="updateLabelAlign.birth" style="width: 300px;margin-left: -340px"></el-date-picker>
            </el-form-item>
            <el-form-item label="籍贯" style="width: 300px">
              <el-input v-model="updateLabelAlign.hometown"></el-input>
            </el-form-item>
            <el-form-item label="联系方式" style="width: 300px">
              <el-input v-model="updateLabelAlign.phone"></el-input>
            </el-form-item>
            <el-form-item label="院系" style="width: 300px">
              <el-input v-model="updateLabelAlign.coll"></el-input>
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
        <el-table-column prop="sno" label="学号" sortable width="100">
        </el-table-column>
        <el-table-column prop="name" label="姓名" sortable width="100">
        </el-table-column>
        <el-table-column prop="sex" label="性别" width="100">
        </el-table-column>
        <el-table-column prop="birth" label="出生日期" sortable width="120">
        </el-table-column>
        <el-table-column prop="hometown" label="籍贯" width="100">
        </el-table-column>
        <el-table-column prop="phone" label="联系方式" width="120">
        </el-table-column>
        <el-table-column prop="coll" label="院系" width="100" sortable >
        </el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button
                size="mini"
                @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
            <el-button
                size="mini"
                type="danger"
                @click="handleDelete(scope.$index, scope.row)">删除</el-button>
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
  name: "Table",
  data() {
    return {
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 5,
      name: "",
      formLabelAlign: {},
      dialogFormVisible: false,
      formLabelWidth: '120px',
      labelPosition: 'right',
      updateLabelAlign: {},
      updateFormVisible: false
    }
  },
  created(){
    //请求分页查询数据
    fetch("http://localhost:9090/admin/page?pageNum="+this.pageNum+"&pageSize="+this.pageSize+"&name="+this.name).then(res => res.json()).then(res =>{
          this.tableData=res.data;
          this.total= res.total;
        }
    )
  },
  methods: {
    load(){
      request.get("/admin/page" ,{
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name
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
    handleadd(){
      this.dialogFormVisible = true;
      this.formLabelAlign={};
    },
    add(){
      // console.log(this.formLabelAlign)
      let formLabelAlign = {
        "sno": this.formLabelAlign.sno,
        "name": this.formLabelAlign.name,
        "sex": this.formLabelAlign.sex,
        "birth": this.formLabelAlign.birth,
        "hometown": this.formLabelAlign.hometown,
        "phone": this.formLabelAlign.phone,
        "coll": this.formLabelAlign.coll,
      }
      this.$confirm("是否确认添加该学生信息","提示",{
        iconClass: "el-icon-question",//自定义图标样式
        confirmButtonText: "确认",//确认按钮文字更换
        cancelButtonText: "取消",//取消按钮文字更换
        showClose: true,//是否显示右上角关闭按钮
        type: "warning",//提示类型  success/info/warning/error
      }).then(()=>{
        request.post("/admin/insertstu",formLabelAlign).then(res =>{
          if (res){
            this.$message.success("保存成功！")
            this.dialogFormVisible = false
          }else{
            this.$message.error("保存失败！请检查学号是否已经存在!")
          }
        });
      }).catch(()=> {
        this.$message.info("已取消该操作!")
      });
      this.load()
    },
    handleEdit(index, row) {
       this.updateLabelAlign=row;
      this.updateFormVisible = true;
      },
    update(){
      let formLabelAlign = {
        "sno": this.updateLabelAlign.sno,
        "name": this.updateLabelAlign.name,
        "sex": this.updateLabelAlign.sex,
        "birth": this.updateLabelAlign.birth,
        "hometown": this.updateLabelAlign.hometown,
        "phone": this.updateLabelAlign.phone,
        "coll": this.updateLabelAlign.coll,
      }
      this.$confirm("是否确认修改该学生信息","提示",{
        iconClass: "el-icon-question",//自定义图标样式
        confirmButtonText: "确认",//确认按钮文字更换
        cancelButtonText: "取消",//取消按钮文字更换
        showClose: true,//是否显示右上角关闭按钮
        type: "warning",//提示类型  success/info/warning/error
      }).then(()=>{
        request.put("/admin/updatestu",formLabelAlign).then(res =>{
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
    handleDelete(index, row) {
      this.$confirm("是否确认删除该学生信息","提示",{
        iconClass: "el-icon-question",//自定义图标样式
        confirmButtonText: "确认",//确认按钮文字更换
        cancelButtonText: "取消",//取消按钮文字更换
        showClose: true,//是否显示右上角关闭按钮
        type: "warning",//提示类型  success/info/warning/error
      }).then(()=>{
        request.delete("/admin/delstu/"+row.sno).then(res =>{
          if (res){
            this.$message.success("删除成功！")
            this.dialogFormVisible = false
          }else{
            this.$message.error("删除失败！")
          }
        });
      }).catch(()=> {
        this.$message.info("已取消该操作!")
      });
      this.load();
    }
  },
}
</script>

<style scoped>
.el-pagination.el-pager li.active {
  background-color: #545c64;
  color: #ffd04b;
}
</style>