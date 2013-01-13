within LotkaVolterra.Components;
model RegionalPopulation "A localized population of animals"
  Interfaces.Population pop
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  parameter Boolean steady_state;
  parameter Real initial_population annotation(Dialog(enable=not steady_state));
protected
  Real population(start=10) = pop.population;
initial equation
  if steady_state then
    der(population) = 0;
  else
    pop.population = initial_population;
  end if;
equation
  der(population) = pop.rate;
  assert(population>=0, "Population went negative!");
  annotation (Diagram(graphics), Icon(graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={170,255,85},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-60,70},{-40,50}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-50,2},{-30,-18}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{16,12},{36,-8}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{50,44},{70,24}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{60,-60},{80,-80}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-8,-50},{12,-70}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{2,64},{22,44}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-68,-66},{-48,-86}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-58,28},{-38,8}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{72,2},{92,-18}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{38,82},{58,62}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-92,-14},{-72,-34}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-100,-120},{100,-120}},
          lineColor={0,0,0},
          fillColor={213,255,170},
          fillPattern=FillPattern.Solid,
          textString="%name")}));
end RegionalPopulation;
