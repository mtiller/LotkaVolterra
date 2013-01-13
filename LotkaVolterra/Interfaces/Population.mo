within LotkaVolterra.Interfaces;
connector Population "A connector for a population of animals"
  Real population;
  flow Real rate;
  annotation (Icon(graphics={Ellipse(
          extent={{-100,98},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid)}));
end Population;
