<template>
  <!--为echarts准备一个具备大小的容器dom-->
  <div id="main" style="width:1350px;height:600px;"></div>
</template>
<script>
import * as echarts from 'echarts';

export default {
  name: '',
  data() {
    return {
      charts: '',
      avgList: null,
      timeList: null,
      xData: ['8','2','3','4','5','6'],
      cpuId: ''
    }
  },
  methods: {

    open() {
      this.$alert('请点击CPU数据分析页面的数据可视化按钮进行查询', '提示！！', {
        confirmButtonText: '确定'
      });
    },
    getDataList(){
      cpu.getEchartsList(this.cpuId)
          .then(response=>{
            this.avgList=response.data.avgList
            this.timeList=response.data.timeList
            //console.log(this.opinionData)
            console.log(this.timeList)
            console.log(this.xData)

            this.$nextTick(function() {
              this.drawLine('main')
            })
          }).catch(error=>{
        console.log(error)
      })
    },
    drawLine(id) {
      this.charts = echarts.init(document.getElementById(id))
      this.charts.setOption({
        tooltip: {
          trigger: 'axis'
        },
        legend: {
          data: ['服务器CPU使用情况']
        },
        grid: {
          left: '3%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },

        toolbox: {
          feature: {
            saveAsImage: {}
          }
        },
        xAxis: {
          type: 'category',
          boundaryGap: false,
          //data:
          data: this.timeList
        },
        yAxis: {
          type: 'value'
        },

        series: [{
          name: '服务器CPU使用情况',
          type: 'line',
          stack: '总量',
          data: this.avgList
        }]
      })
    }
  },
  //调用
  created(){
    if(this.$route.params && this.$route.params.id){
      this.cpuId=this.$route.params.id
      if(this.cpuId==":id"){
        this.open()
      }
      console.log("========="+this.cpuId)
    }
    this.getDataList()
  },

  mounted() {

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

