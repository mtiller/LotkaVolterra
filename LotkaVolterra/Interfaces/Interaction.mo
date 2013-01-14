within LotkaVolterra.Interfaces;
partial model Interaction "Modeling interaction between two populations"

  Population pop_a
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Population pop_b
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  annotation (Icon(graphics), Diagram(graphics));
protected
  Real a_growth "Growth in population a that results from this interaction";
  Real a_decline "Decline in population a that results from this interaction";
  Real b_growth "Growth in population b that results from this interaction";
  Real b_decline "Decline in population b that results from this interaction";
equation
  a_decline = -a_growth;
  pop_a.rate = a_decline;
  b_decline = -b_growth;
  pop_b.rate = b_decline;
end Interaction;
