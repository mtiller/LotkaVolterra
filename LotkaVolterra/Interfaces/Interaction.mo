within LotkaVolterra.Interfaces;
model Interaction "Modeling interaction between two populations"

  Population pop_a
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Population pop_b
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  annotation (Icon(graphics), Diagram(graphics));
end Interaction;
