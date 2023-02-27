<template>
    <div class="container my-5">
        <div class="row">
            <div class="col-12">
                <h5 class="text-center">出勤表</h5>
                <table class="table table-bordered">
                    <thead class="thead-light">
                        <tr>
                            <th v-for="date in dates" :key="date">{{ date.format('MM/DD') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td v-for="date in dates" :key="date">{{ displayShift(date) }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>
<script>
import axios from 'axios';
import moment from 'moment';
export default {
    name: 'CastShifts',
    data() {
        return {
            shifts: [],
            dates: []
        }
    },
    methods: {
        displayShift(date) {
            if (!this.shifts[date.format('YYYY-MM-DD')]) {
                return '---';
            }
            let start = moment(this.shifts[date.format('YYYY-MM-DD')].start_datetime).format('hh:ss');
            let end = moment(this.shifts[date.format('YYYY-MM-DD')].end_datetime).format('hh:ss');
            return start + ' ~ ' + end;
        }
    },
    mounted() {
        for (let i = 0; i < 7; i++) {
            this.dates.push(moment().add(i, 'days'));
        }
        axios.get('/api/get_shifts/' + this.$route.params.cast_id)
            .then(response => {
                this.shifts = response.data.reduce((acc, shift) => {
                    acc[moment(shift.start_datetime).format('YYYY-MM-DD')] = shift;
                    return acc;
                }, {});
                console.log(this.shifts);
            })
            .catch(error => {
                console.log(error);
            });
    }
}
</script>

<style>

</style>