using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus();
        }
        
        public bool sePuedeEnv = false;

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            if (sePuedeEnv)
            {
                lblValores.Visible = true;
                lblValores.Text = "VALORES DEL FORMULARIO" +
                "<br/> Código Empleado: " + txtCodEmp.Text +
                "<br/> NIF: " + txtNifEmp.Text +
                "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
                "<br/> Dirección: " + txtDirEmp.Text +
                "<br/> Ciudad: " + txtCiuEmp.Text +
                "<br/> Teléfonos: " + txtTelEmp.Text +
                "<br/> Fecha de Nacimiento: " + txtFecNac.Text +
                "<br/> Fecha de Incorporación: " + txtFecIng.Text +
                "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
                "<br/> Departamento: " + ddlDepEmp.Text;
            }
            else
            {
                lblErrorEnvio.Text = "No se puede enviar. Error en valores del formulario.";
            }

        }

        protected void fechasCoherentes(DateTime nac, DateTime ing)
        {
            DateTime ahora = System.DateTime.Now;

            lblError1.Visible = true;
            lblError2.Visible = true;
            sePuedeEnv = true;


            if (ing.Day == 1 && ing.Month == 1 && ing.Year == 1)
            {
                lblError1.Text = "";
            }
            else if (nac > ing)
            {
                lblError1.Text = "La fecha de ingreso no puede ser menor a la fecha de nacimiento.";
                lblValores.Text = "";
                txtFecNac.Text = "";
                sePuedeEnv = false;
            }
            else
                lblError1.Text = "";

            if (ing > ahora)
            {
                lblError2.Text = "La fecha de ingreso no puede ser mayor a la actual.";

                txtFecIng.Text = "";
                txtAños.Text = "";
                txtMeses.Text = "";
                txtDias.Text = "";
                lblValores.Text = "";
                sePuedeEnv = false;
            }
            else
                lblError2.Text = "";
        }
        protected void calcAntiguedad(DateTime fecha)
        {
            DateTime ahora = System.DateTime.Now;
            TimeSpan diferencia = ahora - fecha;

            if (diferencia.TotalDays < 0)
            {
                lblValores.Text = "";
                txtAños.Text = "";
                txtMeses.Text = "";
                txtDias.Text = "";
                lblError2.Text = "La fecha de ingreso no puede ser mayor a la actual.";
                //sePuedeEnv = false;
            }
            else
            {
                lblError2.Text = "";
                DateTime fechamin = new DateTime(1, 1, 1);
                txtAños.Text = ((fechamin + diferencia).Year - 1).ToString();
                txtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
                txtDias.Text = ((fechamin + diferencia).Day - 1).ToString();
            }
        }
        //protected void calcAntig(DateTime ing)
        //{
        //    DateTime ahora = System.DateTime.Now;

        //    int antig = ahora.Subtract(ing).Days; //en dias

        //    if (antig / 30 > 1) //todos meses de 30
        //    {
        //        if (antig > 365)
        //        {
        //            antig /
        //        }
        //        txtDias.Text = (antig % 30).ToString();
        //        txtMeses.Text = (antig / 30).ToString();
        //    }
        //    else // < 1mes
        //    {
        //        txtDias.Text = antig.ToString();
        //    }
        //}

        protected void CalNac_SelectionChanged(object sender, EventArgs e)
        {

            DateTime Nacimiento = CalNac.SelectedDate;
            DateTime Ingreso = CalIng.SelectedDate;

            txtFecNac.Text = Nacimiento.ToString("dd/MM/yyyy");
            fechasCoherentes(Nacimiento, Ingreso);

            //calcAntiguedad(Nacimiento);
            lblErrFormatFec.Text = "";
        }

        protected void CalIng_SelectionChanged(object sender, EventArgs e)
        {
            DateTime Ingreso = CalIng.SelectedDate;
            DateTime Nacimiento = CalNac.SelectedDate;

            txtFecIng.Text = Ingreso.ToString("dd/MM/yyyy");
            fechasCoherentes(Nacimiento , Ingreso);

            calcAntiguedad(Ingreso);
            lblErrFormatFec.Text = "";
        }
        protected bool stringFecFormato(string fecha) //formato dd/mm/aaaa
        {
            bool formato = true;
            string digitos = "";
            int ch = 0;
            
            while (ch < fecha.Length || !formato)
            {

                if (fecha[ch] == '/')
                {
                    int dig = Convert.ToInt32(digitos);
                    switch (ch)
                    {
                        case 2: //tenemos dias.
                            if (dig < 1 || dig > 31)
                            {
                                formato = false;
                            }
                            break;

                        default:
                            break;
                    }
                }
                else
                {
                    digitos += (fecha[ch]);
                }

            }

            return formato;
        }
        
        protected void txtFecNac_TextChanged(object sender, EventArgs e)
        {
            lblErrFormatFec.Visible = true;
            try
            {
                DateTime nacDEstring = Convert.ToDateTime(txtFecNac.Text);
                CalNac.SelectedDate = nacDEstring;
                CalNac.TodaysDate = nacDEstring;
                //CalNac.VisibleDate = nacDEstring;

                //calcAntiguedad(nacDEstring);
                lblErrFormatFec.Text = "";
                sePuedeEnv = true;

            }
            catch (System.FormatException)
            {
                cmdEnviar.Enabled = false;
                lblValores.Text = "";
                lblErrFormatFec.Text = "La fecha introducida no esta bien formateada.";
                txtFecNac.Text = "";
                txtAños.Text = "";
                txtMeses.Text = "";
                txtDias.Text = "";
                sePuedeEnv = false;
                //throw;
            }
        }

        protected void txtFecIng_TextChanged(object sender, EventArgs e)
        {
            lblErrFormatFec.Visible = true;
            try
            {
                DateTime ingDEstring = Convert.ToDateTime(txtFecIng.Text); //formato dd/mm/aaaa
                CalIng.SelectedDate = ingDEstring;
                CalIng.TodaysDate = ingDEstring; //.TodaysDate para que cambie bn la fecha del calendario al cambiar de mes.

                calcAntiguedad(ingDEstring);
                lblErrFormatFec.Text = "";
            }
            catch (System.FormatException)
            {
                lblValores.Text = "";
                lblErrFormatFec.Text = "La fecha introducida no esta bien formateada.";
                txtAños.Text = "";
                txtMeses.Text = "";
                txtDias.Text = "";
                txtFecIng.Text = "";

                //throw;
            }
        }
    }
}
/* NOTAS:
  Er1: Cuando da error de fechas no estan bien formateadas, por modificarlas en el textbox, en la nueva recarga 
  de la pag no deja colocar en el calendario la misma fecha que teniamos antes. Hay que clicar en otra fecha.
  Er2: Si introducimos las fechas en el textbox por primera vez y no son coherentes no salta error y deja enviarlas.
  Er3: Que no envie campos vacios (si no tiene valor de fechas no enviar).
  Er4: fechasCoherentes que devuelva bool
     */
