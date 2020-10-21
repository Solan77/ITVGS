using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trepårad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    static int tur = 0;
    static int vinneO = 0;
    static int vinneX = 0;

    protected void Trekk(object btn)
    {     
        Button tbubtn = (Button)btn;

        if (tbubtn.Text == "O" || tbubtn.Text == "X")
        {

        }
        else if (vinneO == 1)
        {

        }
        else if (vinneX == 1)
        {

        }
        else
        {
            if (tur % 2 == 0)
            {
                tbubtn.Text = "X";
            }
            else if (tur % 2 != 0)
            {
                tbubtn.Text = "O";
            }
            tur++; 
        }                 
    }

    protected void Regel()
    {      
        
        if (btn1.Text == "X" && btn5.Text == "X" && btn9.Text == "X")
            {
                vinneX++;
            }
        else if (btn3.Text == "X" && btn5.Text == "X" && btn7.Text == "X")
            {
                vinneX++;
            }
        else if (btn4.Text == "X" && btn5.Text == "X" && btn6.Text == "X")
            {
                vinneX++;
            }
        else if (btn2.Text == "X" && btn5.Text == "X" && btn8.Text == "X")
            {
                vinneX++;
            }
        else if (btn1.Text == "X" && btn2.Text == "X" && btn3.Text == "X")
        {
            vinneX++;
        }
        else if (btn1.Text == "X" && btn4.Text == "X" && btn7.Text == "X")
        {
            vinneX++;
        }
        else if (btn3.Text == "X" && btn6.Text == "X" && btn9.Text == "X")
        {
            vinneX++;
        }
        else if (btn7.Text == "X" && btn8.Text == "X" && btn9.Text == "X")
        {
            vinneX++;
        }
        
        if (btn1.Text == "O" && btn5.Text == "O" && btn9.Text == "O")
            {
                vinneO++;
            }
        else if (btn3.Text == "O" && btn5.Text == "O" && btn7.Text == "O")
            {
                vinneO++;
            }
        else if (btn4.Text == "O" && btn5.Text == "O" && btn6.Text == "O")
            {
                vinneO++;
            }
        else if (btn2.Text == "O" && btn5.Text == "O" && btn8.Text == "O")
            {
                vinneO++;
            }
        else if (btn1.Text == "O" && btn2.Text == "O" && btn3.Text == "O")
        {
            vinneO++;
        }
        else if (btn1.Text == "O" && btn4.Text == "O" && btn7.Text == "O")
        {
            vinneO++;
        }
        else if (btn3.Text == "O" && btn6.Text == "O" && btn9.Text == "O")
        {
            vinneO++;
        }
        else if (btn7.Text == "O" && btn8.Text == "O" && btn9.Text == "O")
        {
            vinneO++;
        }

        if (btn1.Text != " " && btn2.Text != " " && btn3.Text != " " && btn4.Text != " " && btn5.Text != " " && btn6.Text != " " && btn7.Text != " " && btn8.Text != " " && btn9.Text != " ")
        {
            lab1.Text = "Uavgjort";
            btnR.Text = "Reset";
            btnR.Visible = true;
        }

        if (vinneO == 1)
        {
            lab1.Text = "Gratulerer, O vant!!";
            btnR.Text = "Reset";
            btnR.Visible = true;
            tur = 1;
        }
        else if (vinneX == 1)
        {
            lab1.Text = "Gratulerer, X vant!!";
            btnR.Text = "Reset";
            btnR.Visible = true;
            tur = 0;
        }
    }

    protected void Reset()
    {
        vinneX = 0;
        vinneO = 0;

        lab1.Text = " ";

        btn1.Text = " ";    
        btn2.Text = " ";    
        btn3.Text = " ";    
        btn4.Text = " ";    
        btn5.Text = " ";    
        btn6.Text = " ";    
        btn7.Text = " ";    
        btn8.Text = " ";    
        btn9.Text = " ";

        btnR.Visible = false;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        Trekk(btn1);
        Regel();
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        Trekk(btn2);
        Regel();
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        Trekk(btn3);
        Regel();
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        Trekk(btn4);
        Regel();
    }

    protected void btn5_Click(object sender, EventArgs e)
    {
        Trekk(btn5);
        Regel();
    }

    protected void btn6_Click(object sender, EventArgs e)
    {
        Trekk(btn6);
        Regel();
    }

    protected void btn7_Click(object sender, EventArgs e)
    {
        Trekk(btn7);
        Regel();
    }

    protected void btn8_Click(object sender, EventArgs e)
    {
        Trekk(btn8);
        Regel();
    }

    protected void btn9_Click(object sender, EventArgs e)
    {
        Trekk(btn9);
        Regel();
    }

    protected void btnR_Click(object sender, EventArgs e)
    {
        Reset();
    }
}