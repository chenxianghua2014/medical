$(function () {
        $('#weatherbeijing').highcharts({
            chart: {
                zoomType: 'xy'
            },
            title: {
                text: '半年内慢性疾病统计情况'
            },
            subtitle: {
                text: '来源: WorldClimate.com'
            },
            xAxis: [{
                categories: ['一月', '二月', '三月', '四月', '五月', '六月',
                    '七月', '八月', '九月', '十月', '十一月', '十二月']
            }],
            yAxis: [{ // Primary yAxis
                labels: {
                    formatter: function() {
                        return this.value +'°C';
                    },
                    style: {
                        color: '#89A54E'
                    }
                },
                title: {
                    text: '气温',
                    style: {
                        color: '#89A54E'
                    }
                },
                opposite: true
    
            }, { // Secondary yAxis
                gridLineWidth: 0,
                title: {
                    text: '降雨量',
                    style: {
                        color: '#4572A7'
                    }
                },
                labels: {
                    formatter: function() {
                        return this.value +' mm';
                    },
                    style: {
                        color: '#4572A7'
                    }
                }
    
            }],
            tooltip: {
                shared: true
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                x: 120,
                verticalAlign: 'top',
                y: 80,
                floating: true,
                backgroundColor: '#FFFFFF'
            },
            series: [{
                name: '降雨量',
                color: '#4572A7',
                type: 'spline',
                yAxis: 1,
                data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
                tooltip: {
                    valueSuffix: ' mm'
                }
    
            },  {
                name: '气温',
                color: '#89A54E',
                type: 'spline',
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6],
                tooltip: {
                    valueSuffix: ' °C'
                }
            }],
    	    
    	    credits: {  
                enabled: false
            }  
        });
    });
    
