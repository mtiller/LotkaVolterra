within LotkaVolterra.Components;
model RegionEcosystem "Include all the dynamics but for a single region"
  extends LotkaVolterra.Examples.ThreeTierWithDisease;
  Interfaces.Population w
    annotation (Placement(transformation(extent={{-50,90},{-30,110}})));
  Interfaces.Population f
    annotation (Placement(transformation(extent={{30,90},{50,110}})));
  Interfaces.Population r
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
equation

  connect(wolves.pop, w) annotation (Line(
      points={{-40,60},{-40,100}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(foxes.pop, f) annotation (Line(
      points={{40,-30},{40,100}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(rabbits.pop, r) annotation (Line(
      points={{-40,-30},{-40,-20},{-20,-20},{-20,-60},{0,-60},{0,-100}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (Icon(graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={170,255,85},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-20,-20},{20,-60}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-80,80},{-20,20}},
          lineColor={0,0,0},
          fillColor={135,135,135},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{20,80},{80,20}},
          lineColor={0,0,0},
          fillColor={255,170,85},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-50,20},{-60,10},{-54,10},{-54,-46},{-30,-46},{-30,-52},{-20,
              -40},{-30,-28},{-30,-36},{-46,-36},{-46,10},{-40,10},{-50,20}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={170,170,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{50,20},{60,10},{54,10},{54,-46},{32,-46},{32,-52},{20,-40},{
              32,-28},{32,-36},{46,-36},{46,10},{40,10},{50,20}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={170,170,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{20,-100},{160,-160}},
          lineColor={0,0,255},
          textString="%name")}), Diagram(graphics));
end RegionEcosystem;
