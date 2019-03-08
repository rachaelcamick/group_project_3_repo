import sqlalchemy

from sqlalchemy import create_engine
from sqlalchemy import Column, Integer, String, Float

from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine

from flask import Flask, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

#Create an app
app = Flask(__name__)
#Base = declarative_base()
# The database URI
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///methane.db"
db = SQLAlchemy(app)

class Emissions(db.Model):
  __tablename__ = "emissions_data"
  Country = db.Column(db.String, primary_key=True)
  Country_Code = db.Column(db.String)
  Continent = db.Column(db.String)
  Region = db.Column(db.String, nullable=True)
  Year = db.Column(db.Integer, nullable=True)
  Population = db.Column(db.Integer, nullable=True)
  Emissions = db.Column(db.Integer, nullable=True)
  Emissions_Per_Capita=db.Column(db.Integer)

  def __repr__(self):
        return '<Emissions %r>' % (self.country)

@app.route("/")
def index():
     """Return the homepage."""
     return render_template("index.html")
def welcome():

    """List all available api routes."""

    return (

        f"Available Routes:<br/>"

        f"/emissions_data/<br/>"

        f"/meat_data/<br/>"

    )
@app.route("/emissions_data/")

def getEmissions():
   """Return the MetaData for a given sample."""
   sel = [
       Emissions.Country,
       Emissions.Country_Code,
       Emissions.Continent,
       Emissions.Region,
       Emissions.Year,
       Emissions.Population,
       Emissions.Emissions,
       Emissions.Emissions_Per_Capita
  ]
   results = db.session.query(*sel).all()
   return jsonify(results)


if __name__ == "__main__":
    app.run(port=8000)