within LotkaVolterra.Components;
model Reproduction "Model of reproduction"
  extends Interfaces.SinkOrSource;
  parameter Real alpha "Birth rate";
  annotation (Icon(graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,255,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-80,80},{-40,40}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{40,80},{80,40}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-6,80},{6,40}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-20,66},{20,54}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-20,18},{20,6}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-20,-6},{20,-18}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-70,-40},{-50,-60}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-40,-60},{-20,-80}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-10,-40},{10,-60}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,-60},{40,-80}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{50,-40},{70,-60}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-100,-120},{100,-120}},
          lineColor={0,0,0},
          textString="%name")}), Diagram(graphics={Text(
          extent={{-100,-120},{100,-120}},
          lineColor={0,0,0},
          textString="%name")}));
equation
  growth = alpha*pop.population;
end Reproduction;
