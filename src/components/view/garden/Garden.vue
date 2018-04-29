<template>
  <div class="pull-center">
    <div class="row">
      <div class="col-12">
        <div class="input-group mb-5">
          <div class="input-group-prepend">
            <span class="input-group-text" id="basic-addon1">uptime</span>
          </div>
          <input type="text" class="form-control" v-model="garden.uptime">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <button type="button" class="circle btn btn-xl btn-secondary"
          v-show="!garden.on" @click="turnOn">
          <i class="fas fa-play"></i>
        </button>
        <button type="button" class="circle btn btn-xl btn-secondary"
          v-show="garden.on" @click="turnOff">
          <i class="fas fa-pause"></i>
        </button>
      </div>
    </div>
  </div>
</template>

<script>
// import axios from 'axios'
export default {
  data () {
    return {
      garden: {
        uptime: 30000,
        on: false,
        url: 'http://192.168.0.11:3000'
      }
    }
  },

  methods: {
    async turnOn () {
      this.setGardenOn()
      let response// = await axios.get(`${this.garden.url}/garden/on?uptime=${this.garden.uptime}`)
      console.log(response)

      setTimeout(() => {
        this.setGardenOff()
      }, this.garden.uptime)
    },

    async turnOff () {
      this.setGardenOff()
      let response// = await axios.get(`${this.garden.url}/garden/off`)
      console.log(response)
    },

    setGardenOn () {
      this.garden.on = true
    },

    setGardenOff () {
      this.garden.on = false
    }

  }
}
</script>

<style lang="scss" scoped>
.pull-center {
  text-align: center;
}

.circle {
  -webkit-border-radius: 50%;
     -moz-border-radius: 50%;
          border-radius: 50%;
}

.btn-xl {
  padding: 50px 65px;
  font-size: 110px;
  line-height: normal;
}
</style>
