using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemperatureConverter
{
    public partial class Converter : System.Web.UI.Page
    {
        private double convertedTemp;
        private bool haveValidTemp = false;
        private double inpTemp;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sets the dropdown lists to Fahrenheit and Celsius only for the first time
            if (!IsPostBack)
            {
                fahrCels1DropDownList.SelectedIndex = 1;
                fahrCels2DropDownList.SelectedIndex = 0;
            }
        }

        protected void convertButton_Click(object sender, EventArgs e)
        {
            string badFieldName = null;
            string adviceString = null;
            //text fields to set error message
            if (!haveValidTemp)
            {
                badFieldName = "Input Temperature";
                adviceString = "Out of Range";
            }

            //if temperature input is out of range a message is displayed  and the process is interrupted
            if (badFieldName != null)
            {
                messageLabel.Text = "Invalid " +badFieldName + ".\n" + adviceString;
                return;
            }

            //if the input is correct the conversion takes place 
          
            //Read dropdown list selection
            int unit1 = fahrCels1DropDownList.SelectedIndex;
            int unit2 = fahrCels2DropDownList.SelectedIndex;
            
            //Fahrenheit to Fahrenheit or Celsius to Celsius
            if ((unit1 == 0 && unit2 == 0)|(unit1 == 1 && unit2 == 1))
            {
                convertedTemp = inpTemp;
            }
            else if (unit1 == 0 && unit2 == 1) //Fahrenheit to Celsius
            {
                convertedTemp = (inpTemp - 32) * 1.8; 
            }
            else if (unit1 == 1 && unit2 == 0) //Celsius to Fahrenheit
            {
                convertedTemp = (inpTemp * 1.8) + 32;
            }
            else
            {
                //There is an error somewhere
                
            }
            //Display of the result 
            outputTempTexBox.Text = convertedTemp.ToString("F2");
        }

        protected void fahrCels1DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void fahrCels2DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void clearButton_Click(object sender, EventArgs e)
        {
            //Reset fields after clear button is triggered
            inpTempTexBox.Text = "";
            outputTempTexBox.Text = "";

            messageLabel.Text = "";
            fahrCels1DropDownList.SelectedIndex = 1;
            fahrCels2DropDownList.SelectedIndex = 0;
        }

        protected void inpTempTexBox_TextChanged(object sender, EventArgs e)
        {
            //Checks whether input temperature is within bounds 
            haveValidTemp = false;

            if (double.TryParse(inpTempTexBox.Text.Trim(), out inpTemp))
            {
                if ((inpTemp >= -1000) && (inpTemp <= 1000))
                {
                    haveValidTemp = true;
                }
            }
        }
    }
}