 $(function () {
    
    $('#dietdisease').highcharts({
        
	    chart: {
	        polar: true
	    },
	    
	    title: {
	        text: '一年内病人住院情况统计'
	    },
	    
	    pane: {
	        startAngle: 0,
	        endAngle: 360
	    },
	
	    xAxis: {
	        tickInterval: 30,
	        min: 0,
	        max: 360,
	        labels: {
	        	formatter: function () {
	        		if(this.value==0) return "水果";
	        		else if(this.value==30) return "蔬菜";
	        		else if(this.value==60) return "肉类";
	        		else if(this.value==90) return "鱼类";
	        		else if(this.value==120) return "蛋类";
	        		else if(this.value==150) return "豆类";
	        		else if(this.value==180) return "腌菜";
	        		else if(this.value==210) return "糖类";
	        		else if(this.value==240) return "茶类";
	        		else if(this.value==270) return "大蒜";
	        		else if(this.value==300) return "吸烟";
	        		else if(this.value==330) return "喝酒";
	        		return this.valueOf();
	        	}
	        }
	    },
	        
	    yAxis: {
	        min: 0,
	        max: 1800
	    },
	    
	    plotOptions: {
	        series: {
	            pointStart: 0,
	            pointInterval: 30
	        },
	        column: {
	            pointPadding: 0,
	            groupPadding: 0
	        }
	    },
	
	    series: [{
	        type: 'area',
	        name: '高血压',
	        data: [1124, 2438, 1030, 738, 1308, 1257, 702, 646, 902, 645, 496, 447],
	    }, {
	        type: 'area',
	        name: '糖尿病',
	        data: [173, 372, 173, 131, 227, 223, 96, 37, 141, 96, 64, 54]
	    }, {
	        type: 'area',
	        name: '心脏病',
	        data: [653, 1224, 488, 399, 708, 708, 347, 369, 395, 340, 213, 172]
	    }, {
	        type: 'area',
	        name: '中风',
	        data: [360, 704, 297, 196, 423, 412, 190, 220, 203, 200, 120, 105]
	    }, {
	        type: 'area',
	        name: '支气管炎',
	        data: [673, 1586, 754, 417, 846, 786, 455, 473, 571, 397, 388, 406]
	    }, {
	        type: 'area',
	        name: '肺结核',
	        data: [41, 95, 46, 33, 58, 53, 34, 35, 44, 25, 33, 30]
	    }, {
	        type: 'area',
	        name: '白内障',
	        data: [772, 1601, 780, 503, 942, 820, 415, 533, 509, 361, 257, 258]
	    }, {
	        type: 'area',
	        name: '青光眼',
	        data: [142, 331, 147, 91, 186, 167, 84, 97, 95, 82, 56, 51]
	    }, {
	        type: 'area',
	        name: '癌症',
	        data: [31, 56, 27, 18, 18, 38, 35, 18, 24, 16, 17, 8]
	    }, {
	        type: 'area',
	        name: '前列腺炎',
	        data: [250, 446, 260, 177, 303, 280, 103, 149, 196, 145, 132, 112]
	    }, {
	        type: 'area',
	        name: '胃肠溃疡',
	        data: [254, 666, 256, 156, 364, 310, 193, 183, 249, 180, 194, 150]
	    }, {
	        type: 'area',
	        name: '痴呆',
	        data: [143, 322, 199, 96, 216, 178, 84, 125, 81, 66, 37, 41]
	    }, {
	        type: 'area',
	        name: '其它',
	        data: [509, 1325, 607, 321, 671, 585, 360, 461, 459, 302, 304, 327]
	    }],
	    
	    credits: {  
            enabled: false
        }  
	});
});