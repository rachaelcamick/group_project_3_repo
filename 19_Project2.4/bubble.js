function init() {
    var data2012 = [{
      x: data_2012.beefTotalKG,
      y: data_2012.totalEmissions,
      mode: 'markers',
      marker: {
          size: data_2012.population
      }
    }];
  
    var layout = {
      height: 600,
      width: 800
    };
  
    Plotly.plot("bubble", data2012, layout);
  }
  
  function updatePlotly(newdata) {
    var BUBBLE1 = document.getElementById("bubble");
    Plotly.restyle(BUBBLE1, "values", [newdata]);
  }
  
  function getData(dataset) {
    var data = [];
    switch (dataset) {
    case "dataset1":
      data = [1, 2, 3, 39];
      break;
    case "dataset2":
      data = [10, 20, 30, 37];
      break;
    case "dataset3":
      data = [100, 200, 300, 23];
      break;
    default:
      data = [30, 30, 30, 11];
    }
    updatePlotly(data);
  }
  
  init();
  