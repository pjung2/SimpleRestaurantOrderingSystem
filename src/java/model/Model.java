/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Chumples
 */
public class Model
{
    private double orderSubTotal;

    public double getTax()
    {
        return tax;
    }

    public double getOrderGrandTotal()
    {
        return orderGrandTotal;
    }

    public HashMap<String, String> getMenuSelection()
    {
        return menuSelection;
    }

    public double getOrderSubTotal()
    {
        return orderSubTotal;
    }

    public HashMap<String, String> getMenuOptions()
    {
        return menuOptions;
    }
    private double tax;
    private double orderGrandTotal;
    private static final double TAXRATE = 0.05;
    private HashMap<String, String> menuOptions;
    private HashMap<String, String> menuSelection;

    public Model()
    {
        menuOptions = new HashMap<>();
        menuSelection = new HashMap<>();

        menuOptions.put("Large Pizza", "15.00");
        menuOptions.put("Pub Burger", "12.50");
        menuOptions.put("House Beer", "5.50");
        menuOptions.put("Nachos", "5.00");
    }

    public void calculateOrder(HttpServletRequest request)
    {
        System.out.println(menuSelection.toString());

        Iterator it = menuOptions.entrySet().iterator();
        while (it.hasNext())
        {
            Map.Entry pairs = (Map.Entry) it.next();

            String item = request.getParameter(pairs.getKey().toString());

            System.out.println(menuOptions.toString());

            if (item == null)
            {
                
            }            
            else
            {
                double d = Double.valueOf(pairs.getValue().toString());
                orderSubTotal += d;
                menuSelection.put(pairs.getKey().toString(), pairs.getValue().toString());
            }
            it.remove();	    
        }

        orderSubTotal = (double) Math.round(orderSubTotal * 100) / 100;

        tax = orderSubTotal * TAXRATE;
        tax = (double) Math.round(tax * 100) / 100;

        orderGrandTotal = orderSubTotal + tax;
        orderGrandTotal = (double) Math.round(orderGrandTotal * 100) / 100;
    }
}