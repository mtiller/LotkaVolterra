within LotkaVolterra.Icons;
partial model DeathIcon

  annotation (Icon(graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Bitmap(
          extent={{-96,96},{96,-96}},
          fileName="modelica://LotkaVolterra/Icons/death.png"),
        Text(
          extent={{-100,-120},{100,-120}},
          lineColor={0,0,0},
          textString="%name")}));

end DeathIcon;
