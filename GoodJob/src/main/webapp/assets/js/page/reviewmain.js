var ctx = document.getElementById("myChart2").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    datasets: [{
      label: '리뷰 개수',
      data: [460, 458, 330, 502, 430, 610, 488, 488, 488, 488, 488, 488],
      borderWidth: 2,
      backgroundColor: '#6777ef',
      borderColor: '#6777ef',
      borderWidth: 2.5,
      pointBackgroundColor: '#ffffff',
      pointRadius: 4
    }]
  },
  options: {
    legend: {
      display: false
    },
    scales: {
      yAxes: [{
        gridLines: {
          drawBorder: false,
          color: '#f2f2f2',
        },
        ticks: {
          beginAtZero: true,
          stepSize: 150
        }
      }],
      xAxes: [{
        ticks: {
          display: true // x축 틱 표시
        },
        gridLines: {
          display: false
        }
      }]
    }
  }
});

var ctx = document.getElementById("myChart4").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'pie',
  data: {
    datasets: [{
      data: [80, 50, 40, 30, 100],
      backgroundColor: [
        '#191d21',
        '#63ed7a',
        '#ffa426',
        '#fc544b',
        '#6777ef',
      ],
      label: 'Dataset 1'
    }],
    labels: [
      '기업 A',
      '기업 B',
      '기업 C',
      '기업 D',
      '기업 E'
    ]
  },
  options: {
    responsive: true,
    legend: {
      display: true,
      position: 'left', // 범례 위치 지정
      labels: {
        boxWidth: 15, // 범례 상자 너비
        padding: 20, // 범례 텍스트와 상자 사이 간격
        fontSize: 14 //
      }
    },
    legendCallback: function(chart) { // 범례 커스터마이징
      var text = [];
      text.push('<ul class="legend-list">');
      for (var i = 0; i < chart.data.labels.length; i++) {
        text.push('<li>');
        text.push('<span class="legend-box" style="background-color:' + chart.data.datasets[0].backgroundColor[i] + '"></span>');
        text.push(chart.data.labels[i] + ' (' + chart.data.datasets[0].data[i] + ')');
        text.push('</li>');
      }
      text.push('</ul>');
      return text.join('');
    }
  }
});


var ctx = document.getElementById("myChart3").getContext('2d');
var myChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [80, 50, 40, 30, 20],
      backgroundColor: [
        '#191d21',
        '#63ed7a',
        '#ffa426',
        '#fc544b',
        '#6777ef',
      ],
      label: 'Dataset 1'
    }],
    labels: [
      '기업 A',
      '기업 B',
      '기업 C',
      '기업 D',
      '기업 E'
    ]
  },
  options: {
    responsive: true,
    legend: {
      display: true,
      position: 'left',
      labels: {
        boxWidth: 15,
        padding: 20,
        fontSize: 16
      }
    },
    legendCallback: function(chart) {
      var sortedData = chart.data.datasets[0].data.slice().sort(function(a, b) {
        return b - a;
      });

      var text = [];
      text.push('<ul class="legend-list">');
      for (var i = 0; i < sortedData.length; i++) {
        var dataIndex = chart.data.datasets[0].data.indexOf(sortedData[i]);
        text.push('<li>');
        text.push('<span class="legend-box" style="background-color:' + chart.data.datasets[0].backgroundColor[dataIndex] + '"></span>');
        text.push(chart.data.labels[dataIndex] + ' (' + sortedData[i] + ')');
        text.push('</li>');
      }
      text.push('</ul>');
      return text.join('');
    }
  }
});