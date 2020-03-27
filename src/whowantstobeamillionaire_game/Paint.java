/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package whowantstobeamillionaire_game;

import java.awt.BasicStroke;
import java.awt.Canvas;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.util.Random;

/**
 *
 * @author nhanDT
 */
public class Paint extends Canvas {
private int y1, y2, y3, y4;

    public Paint(int y1, int y2, int y3, int y4) {
        this.y1 = y1;
        this.y2 = y2;
        this.y3 = y3;
        this.y4 = y4;
    }

    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D) g;

        RenderingHints rh = new RenderingHints(
                RenderingHints.KEY_ANTIALIASING,
                RenderingHints.VALUE_ANTIALIAS_ON);

        g2d.setRenderingHints(rh);
        BasicStroke bs2 = new BasicStroke(8, BasicStroke.CAP_ROUND,
                BasicStroke.JOIN_BEVEL);
        g2d.setStroke(bs2);
        g.setColor(Color.red);
        g2d.drawLine(30, (100-y1)+20, 30, 120);
        g2d.drawString(y1+"%", 20, 140);
        g2d.drawString("A", 25, 160);
        g.setColor(Color.green);
        g2d.drawLine(60, (100-y2)+20, 60, 120);
        g2d.drawString(y2+"%", 50, 140);
        g2d.drawString("B", 55, 160);
        g.setColor(Color.YELLOW);
        g2d.drawLine(90, (100-y3)+20, 90, 120);
        g2d.drawString(y3+"%", 80, 140);
        g2d.drawString("C", 85, 160);
        g.setColor(Color.white);
        g2d.drawLine(120, (100-y4)+20, 120, 120);
        g2d.drawString(y4+"%", 110, 140);
        g2d.drawString("D", 115, 160);
        g2d.dispose();

    }
    

    

}
