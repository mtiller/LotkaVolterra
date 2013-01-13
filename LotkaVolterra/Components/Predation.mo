within LotkaVolterra.Components;
model Predation "Model of predation"
  extends Interfaces.Interaction;
  parameter Real beta "Prey consumed";
  parameter Real delta "Predators fed";
equation
  b_growth = delta*pop_a.population*pop_b.population;
  a_decline = beta*pop_a.population*pop_b.population;
  annotation (Icon(graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          lineColor={255,0,0}),
        Ellipse(
          extent={{-34,62},{86,-58}},
          pattern=LinePattern.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-34,22},{26,2},{-34,-18},{-34,22}},
          pattern=LinePattern.None,
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,0}),
        Ellipse(
          extent={{-86,20},{-46,-20}},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Line(
          points={{-42,4},{-34,4}},
          pattern=LinePattern.None,
          smooth=Smooth.None),
        Line(
          points={{-40,-4},{-26,-4}},
          pattern=LinePattern.None,
          smooth=Smooth.None),
        Line(
          points={{-44,-10},{-24,-10}},
          pattern=LinePattern.None,
          smooth=Smooth.None),
        Text(
          extent={{-100,-120},{100,-120}},
          lineColor={0,0,0},
          textString="%name")}));
end Predation;
