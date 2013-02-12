within LotkaVolterra.Examples;
model MultipleRegionsWithModelParameters
  "An example with multiple regions + migration that uses replaceable models"
  parameter Real fox_mu=0.2 "migration constant";
  parameter Real wolf_mu=0 "migration constant";

  replaceable model FoxMigration = Components.Migration(mu=fox_mu) constrainedby
    Interfaces.Interaction annotation(choicesAllMatching=true);
  replaceable model WolfMigration = Components.Migration(mu=wolf_mu) constrainedby
    Interfaces.Interaction annotation(choicesAllMatching=true);
  Components.RegionEcosystem R11(steady_state=true)
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  Components.RegionEcosystem R12
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  Components.RegionEcosystem R21 annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-30,-30})));
  Components.RegionEcosystem R22 annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={30,-30})));
  FoxMigration f1(mu=fox_mu)
    annotation (Placement(transformation(extent={{-10,40},{10,60}})));
  FoxMigration f2(mu=fox_mu)
    annotation (Placement(transformation(extent={{-10,-90},{10,-70}})));
  FoxMigration f3(mu=fox_mu)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-80,0})));
  FoxMigration f4(mu=fox_mu)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={50,0})));
  WolfMigration w1(mu=wolf_mu)
    annotation (Placement(transformation(extent={{-10,70},{10,90}})));
  WolfMigration w2(mu=wolf_mu)
    annotation (Placement(transformation(extent={{-10,-60},{10,-40}})));
  WolfMigration w3(mu=wolf_mu)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-50,0})));
  WolfMigration w4(mu=wolf_mu)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={80,0})));
equation
  connect(w3.pop_a, R21.w) annotation (Line(
      points={{-50,-10},{-50,-50},{-26,-50},{-26,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w2.pop_a, R21.w) annotation (Line(
      points={{-10,-50},{-26,-50},{-26,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w2.pop_b, R22.w) annotation (Line(
      points={{10,-50},{34,-50},{34,-40},{34,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w4.pop_a, R22.w) annotation (Line(
      points={{80,-10},{80,-50},{34,-50},{34,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w4.pop_b, R12.w) annotation (Line(
      points={{80,10},{80,60},{26,60},{26,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w1.pop_b, R12.w) annotation (Line(
      points={{10,80},{26,80},{26,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w1.pop_a, R11.w) annotation (Line(
      points={{-10,80},{-34,80},{-34,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(w3.pop_b, R11.w) annotation (Line(
      points={{-50,10},{-50,60},{-34,60},{-34,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f1.pop_a, R11.f) annotation (Line(
      points={{-10,50},{-26,50},{-26,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f1.pop_b, R12.f) annotation (Line(
      points={{10,50},{34,50},{34,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f4.pop_b, R12.f) annotation (Line(
      points={{50,10},{50,50},{34,50},{34,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f2.pop_b, R22.f) annotation (Line(
      points={{10,-80},{26,-80},{26,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f4.pop_a, R22.f) annotation (Line(
      points={{50,-10},{50,-60},{26,-60},{26,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f2.pop_a, R21.f) annotation (Line(
      points={{-10,-80},{-34,-80},{-34,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f3.pop_a, R21.f) annotation (Line(
      points={{-80,-10},{-80,-60},{-34,-60},{-34,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(f3.pop_b, R11.f) annotation (Line(
      points={{-80,10},{-80,50},{-26,50},{-26,40}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (experiment(StopTime=1000, Tolerance=1e-008));
end MultipleRegionsWithModelParameters;
