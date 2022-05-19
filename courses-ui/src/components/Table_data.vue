<template>
  <!--为echarts准备一个具备大小的容器dom-->
  <div>
  <el-row :gutter="20">
    <el-col :span="4" >
      <el-select v-model="valueterm" placeholder="请选择学期" @change="chageterm">
        <el-option
            v-for="(term,key) in optionterm"
            :key="term"
            :label="term"
            :value="term">
        </el-option>
      </el-select>
    </el-col>
     <el-col :span="4">
       <el-select v-model="valuecou" placeholder="请选择课号">
         <el-option
             v-for="(cou,key) in optioncou"
             :key="cou"
             :label="cou"
             :value="cou">
         </el-option>
       </el-select>
     </el-col>
    <el-col :span="4">
      <el-button type="primary" style="margin-left: -30px" @click="valuedata">统计</el-button>
    </el-col>
  </el-row>

    <el-row>
    <el-col :span="12">
      <div id="pie" style="width:500px;height:500px;margin-top: 50px"></div>
    </el-col>
    <el-col :span="12">
      <div id="col" style="width:500px;height:500px;"></div>
    </el-col>
  </el-row>
  </div>

</template>
<script>
import * as echarts from 'echarts';
import request from "@/utils/request";

export default {
  name: '',
  data() {
    return {
        optionterm: [
         ],
        valueterm: '',
      optioncou: [
        ],
      valuecou: '',
      pieoption : {
        title: {
          text: '教师班级人数',
          subtext: 'Student Number',
          left: 'center'
        },
        tooltip: {
          trigger: 'item'
        },
        legend: {
          orient: 'vertical',
          left: 'left'
        },
        series: [
          {
            name: 'Access From',
            type: 'pie',
            radius: '50%',
            data: [
            ],
            emphasis: {
              itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
            }
          }
        ]
      },
      piemyChart: '',
      piechartDom : '',
      coloption :{
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        grid: {
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: [
          {
            type: 'category',
            data: '',
            axisTick: {
              alignWithLabel: true
            }
          }
        ],
        yAxis: [
          {
            type: 'value'
          }
        ],
        series: [
          {
            name: 'Direct',
            type: 'bar',
            barWidth: '60%',
            data: ''
          }
        ]
      },
      colmyChart: '',
      colchartDom : '',
    }
  },
  methods: {
    chageterm(){
     request.get("/admin/couidlist/"+this.valueterm
     ).then(res => {
       console.log(res)
       this.optioncou=res
     })
    },
    valuedata(){
      request.get("/admin/classdata",{
        params: {
          term: this.valueterm,
          couid: this.valuecou,
        }
      }).then(res =>{
        this.pieoption.series[0].data=res
        this.piechartDom= document.getElementById('pie')
        this.piemyChart = echarts.init(this.piechartDom);
        this.piemyChart.setOption(this.pieoption);
      }),
          request.get("/admin/avgrade",{
            params: {
              term: this.valueterm,
              couid: this.valuecou,
            }
          }).then(res =>{
            console.log(res.name)
            this.coloption.xAxis[0].data=res.name;
            this.coloption.series[0].data=res.avg;
            this.colchartDom=document.getElementById('col');
            this.colmyChart=echarts.init(this.colchartDom);
            this.colmyChart.setOption(this.coloption);
          })
    },
  },
//页面元素渲染之后再触发
  mounted() {
    request.get("/admin/termlist").then(res => {
      this.optionterm=res
    });
  }
}
</script>
<style scoped>
* {
  margin: 0;
  padding: 0;
  list-style: none;
}
</style>

