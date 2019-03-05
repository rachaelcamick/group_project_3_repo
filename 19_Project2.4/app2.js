d3.csv("data/final_data/beef_dashboard_data.csv", function(beefData) {
  // if (error) return console.warn(error);
  
  beefData.forEach(function(row) {
    row.year = +row.Year,
    row.population = +row.Population,
    row.totalEmissions = +row["Emissions"],
    row.emissionsPerCapitaKG = +row["Emissions Per Capita"],
    row.beefPerCapitaKG = +row["Beef Consumption Per Capita"],
    row.beefTotalKG = +row["Total Beef Consumption"]
  });
    console.log(beefData);
    var data_2012 = beefData.filter(function(d) { return d.year == 2012; });
    var data_2011 = beefData.filter(function(d) { return d.year == 2011; });
    var data_2010 = beefData.filter(function(d) { return d.year == 2010; });
    var data_2009 = beefData.filter(function(d) { return d.year == 2009; });
    var data_2008 = beefData.filter(function(d) { return d.year == 2008; });
    var data_2007 = beefData.filter(function(d) { return d.year == 2007; });
    var data_2006 = beefData.filter(function(d) { return d.year == 2006; });
    var data_2005 = beefData.filter(function(d) { return d.year == 2005; });
    var data_2004 = beefData.filter(function(d) { return d.year == 2004; });
    var data_2003 = beefData.filter(function(d) { return d.year == 2003; });
    var data_2002 = beefData.filter(function(d) { return d.year == 2002; });
    var data_2001 = beefData.filter(function(d) { return d.year == 2001; });
    var data_2000 = beefData.filter(function(d) { return d.year == 2000; });
    var data_1999 = beefData.filter(function(d) { return d.year == 1999; });
    var data_1998 = beefData.filter(function(d) { return d.year == 1998; });
    var data_1997 = beefData.filter(function(d) { return d.year == 1997; });
    var data_1996 = beefData.filter(function(d) { return d.year == 1996; });
    var data_1995 = beefData.filter(function(d) { return d.year == 1995; });
    var data_1994 = beefData.filter(function(d) { return d.year == 1994; });
    var data_1993 = beefData.filter(function(d) { return d.year == 1993; });
    var data_1992 = beefData.filter(function(d) { return d.year == 1992; });
    var data_1991 = beefData.filter(function(d) { return d.year == 1991; });
    var data_1990 = beefData.filter(function(d) { return d.year == 1990; });

var data2012 = {
  x: data_2012.map(x => x.beefTotalKG),
  y: data_2012.map(x => x.totalEmissions),
  mode: 'markers',
  type:'scatter'
};

var data2011 = {
  x: data_2011.map(x => x.beefTotalKG),
  y: data_2011.map(x => x.totalEmissions),
  mode: 'markers',
  type:'scatter'
};

var data2010 = {
  x: data_2010.map(x => x.beefTotalKG),
  y: data_2010.map(x => x.totalEmissions),
  mode: 'markers',
  type:'scatter'
};

var data2009 = {
   x: data_2009.map(x => x.beefTotalKG),
   y: data_2009.map(x => x.totalEmissions),
   mode: 'markers',
   type: 'scatter'
};

 var data2008 = {
   x: data_2008.map(x => x.beefTotalKG),
   y: data_2008.map(x => x.totalEmissions),
   mode: 'markers',
   type: 'scatter'
};

var data2007 = {
   x: data_2007.map(x => x.beefTotalKG),
   y: data_2007.map(x => x.totalEmissions),
   mode: 'markers',
   type: 'scatter'
 };

 var data2006 = {
  x: data_2006.map(x => x.beefTotalKG),
  y: data_2006.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data2005 = {
  x: data_2005.map(x => x.beefTotalKG),
  y: data_2005.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data2004 = {
  x: data_2004.map(x => x.beefTotalKG),
  y: data_2004.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data2003 = {
  x: data_2003.map(x => x.beefTotalKG),
  y: data_2003.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data2002 = {
  x: data_2002.map(x => x.beefTotalKG),
  y: data_2002.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data2001 = {
  x: data_2001.map(x => x.beefTotalKG),
  y: data_2001.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data2000 = {
  x: data_2000.map(x => x.beefTotalKG),
  y: data_2000.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1999 = {
  x: data_1999.map(x => x.beefTotalKG),
  y: data_1999.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1998 = {
  x: data_1998.map(x => x.beefTotalKG),
  y: data_1998.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1997 = {
  x: data_1997.map(x => x.beefTotalKG),
  y: data_1997.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1996 = {
  x: data_1996.map(x => x.beefTotalKG),
  y: data_1996.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1995 = {
  x: data_1995.map(x => x.beefTotalKG),
  y: data_1995.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1994 = {
  x: data_1994.map(x => x.beefTotalKG),
  y: data_1994.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1993 = {
  x: data_1993.map(x => x.beefTotalKG),
  y: data_1993.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1992 = {
  x: data_1992.map(x => x.beefTotalKG),
  y: data_1992.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1991 = {
  x: data_1991.map(x => x.beefTotalKG),
  y: data_1991.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

var data1990 = {
  x: data_1990.map(x => x.beefTotalKG),
  y: data_1990.map(x => x.totalEmissions),
  mode: 'markers',
  type: 'scatter'
};

function init() {

  data = [data1990]

  var layout = {
    xaxis: {
      range: [ 0, 10000000000 ]
    },
    yaxis: {
      range: [0, 1000000000]
    },
    title:'Data'
   };

  Plotly.newPlot("scatter", data, layout);
}

init();

function getData(dataset) {
  var data = [];
  switch (dataset) {
  case "dataset1":
    data = data1990;
    break;
  case "dataset2":
    data = data1991;
    break;
  case "dataset3":
    data = data1992;
    break;
  case "dataset4":
    data = data1993;
    break;
  case "dataset5":
    data = data1994;
    break;
  case "dataset6":
    data = data1995;
    break;
    case "dataset7":
    data = data1996;
    break;
  case "dataset8":
    data = data1997;
    break;
  case "dataset9":
    data = data1998;
    break;
  case "dataset10":
    data = data1999;
    break;
  case "dataset11":
    data = data2000;
    break;
  case "dataset12":
    data = data2001;
    break;
  case "dataset13":
    data = data2002;
    break;
  case "dataset14":
    data = data2003;
    break;
  case "dataset15":
    data = data2004;
    break;
  case "dataset16":
    data = data2005;
    break;
  case "dataset17":
    data = data2006;
    break;
  case "dataset18":
    data = data2007;
    break;
    case "dataset19":
    data = data2008;
    break;
  case "dataset20":
    data = data2009;
    break;
  case "dataset21":
    data = data2010;
    break;
  case "dataset22":
    data = data2011;
    break;
  case "dataset23":
    data = data2012;
    break;
  case "dataset12":
    data = data2001;
    break;
  default:
    data = data1990;
  }
  updatePlotly(data);
}
function updatePlotly(newdata) {
  var BUBBLE1 = document.getElementById("scatter");
  Plotly.restyle(BUBBLE1, "values", [newdata]);
}

});


