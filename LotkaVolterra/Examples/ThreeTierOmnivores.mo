within LotkaVolterra.Examples;
model ThreeTierOmnivores "Wolves will eat anything"
  extends ThreeTier;
  Components.Predation wolf_pred2(beta=0.02, delta=0.01) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-10,22})));
equation
  connect(wolf_pred2.pop_b, wolves.pop) annotation (Line(
      points={{-10,32},{-10,40},{-20,40},{-20,70},{-40,70},{-40,60}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(wolf_pred2.pop_a, rabbits.pop) annotation (Line(
      points={{-10,12},{-10,0},{-40,0},{-40,-30}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (
    Diagram(graphics),
    experiment(StopTime=100, Tolerance=1e-008),
    __Dymola_experimentSetupOutput);
end ThreeTierOmnivores;
