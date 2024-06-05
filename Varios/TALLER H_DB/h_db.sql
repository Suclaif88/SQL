CREATE TABLE `cita` (
  `cita_id` int(11) NOT NULL,
  `cita_nroatencion` int(111) NOT NULL,
  `cite_feregistro` varchar(111) NOT NULL,
  `cita_estatus` tinyint(1) NOT NULL,
  `medico_id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL
);

INSERT INTO `cita` (`cita_id`, `cita_nroatencion`, `cite_feregistro`, `cita_estatus`, `medico_id`, `paciente_id`) VALUES
(70, 28371937, '31/07/2023', 1, 1, 55);

CREATE TABLE `consulta_medica` (
  `consulta_id` int(11) NOT NULL,
  `consulta_descripcion` int(11) NOT NULL,
  `consulta_diagnostico` int(11) NOT NULL,
  `consulta_feregistro` int(11) NOT NULL,
  `consulta_estatus` int(11) NOT NULL,
  `cita_id` int(11) NOT NULL
);

INSERT INTO `consulta_medica` (`consulta_id`, `consulta_descripcion`, `consulta_diagnostico`, `consulta_feregistro`, `consulta_estatus`, `cita_id`) VALUES
(22, 0, 0, 0, 0, 70);

CREATE TABLE `detalle_insumo` (
  `detain_id` int(11) NOT NULL,
  `fua_id` int(11) NOT NULL,
  `detain_cantidad` int(11) NOT NULL,
  `insumo_id` int(11) NOT NULL
);

CREATE TABLE `detalle_medicamento` (
  `detame_id` int(11) NOT NULL,
  `fua_id` int(11) NOT NULL,
  `detame_cantidad` int(11) NOT NULL,
  `medicamento_id` int(11) NOT NULL
);

CREATE TABLE `detalle_procedimiento` (
  `detaproce_id` int(11) NOT NULL,
  `procedimiento_id` int(11) NOT NULL,
  `fua_id` int(11) NOT NULL
);

CREATE TABLE `especialidad` (
  `especialidad_id` int(11) NOT NULL,
  `especialidad_nombre` int(11) NOT NULL,
  `especialidad_fregistro` int(11) NOT NULL,
  `especialidad_estatus` int(11) NOT NULL
);

INSERT INTO `especialidad` (`especialidad_id`, `especialidad_nombre`, `especialidad_fregistro`, `especialidad_estatus`) VALUES
(10, 0, 0, 0);

CREATE TABLE `fua` (
  `fua_id` int(11) NOT NULL,
  `fua_nro` int(11) NOT NULL,
  `fua_fregistro` varchar(111) NOT NULL,
  `historia_id` int(11) NOT NULL,
  `consulta_id` int(11) NOT NULL
);

INSERT INTO `fua` (`fua_id`, `fua_nro`, `fua_fregistro`, `historia_id`, `consulta_id`) VALUES
(44, 123, '31/07/2023', 88, 22);

CREATE TABLE `historia_clinica` (
  `historia_id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `historia_feregistro` varchar(111) NOT NULL
);

INSERT INTO `historia_clinica` (`historia_id`, `paciente_id`, `historia_feregistro`) VALUES
(88, 55, '31/07/2023');

CREATE TABLE `insumo` (
  `insumo_id` int(11) NOT NULL,
  `insumo_nombre` int(11) NOT NULL,
  `insumo_stock` int(11) NOT NULL,
  `insumo_feregistro` int(11) NOT NULL
);

CREATE TABLE `medicamento` (
  `medicamento_id` int(11) NOT NULL,
  `medicamento_nombre` int(11) NOT NULL,
  `medicamento_alias` int(11) NOT NULL,
  `medicamento_stock` int(11) NOT NULL,
  `medicamento_fregistro` int(11) NOT NULL,
  `medicamento_estatus` int(11) NOT NULL
);

CREATE TABLE `medico` (
  `medico_id` int(11) NOT NULL,
  `medico_nombre` varchar(100) NOT NULL,
  `medico_apepal` varchar(100) NOT NULL,
  `medico_apemat` varchar(100) NOT NULL,
  `medico_direccion` varchar(100) NOT NULL,
  `medico_movil` int(100) NOT NULL,
  `medico_sexo` varchar(11) NOT NULL,
  `medico_fenac` varchar(100) NOT NULL,
  `medico_nrodocumento` int(111) NOT NULL,
  `medico_colegiatura` varchar(111) NOT NULL,
  `especialidad_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL
);

INSERT INTO `medico` (`medico_id`, `medico_nombre`, `medico_apepal`, `medico_apemat`, `medico_direccion`, `medico_movil`, `medico_sexo`, `medico_fenac`, `medico_nrodocumento`, `medico_colegiatura`, `especialidad_id`, `usu_id`) VALUES
(1, 'JULIO', 'RAMIREZ', 'ZULETA', 'Av. 80 #50-33', 319514104, 'masculino', '1/12/1949', 1028937123, 'Instituto Tecnológico Metropolitano de Medellín', 10, 4);

CREATE TABLE `paciente` (
  `paciente_id` int(11) NOT NULL,
  `paciente_nombre` int(11) NOT NULL,
  `paciente_apepat` int(11) NOT NULL,
  `paciente_direccion` int(11) NOT NULL,
  `paciente_movil` int(11) NOT NULL,
  `paciente_sexo` int(11) NOT NULL,
  `paciente_fenac` int(11) NOT NULL,
  `paciente_nrodocumento` int(11) NOT NULL,
  `paciente_estatus` int(11) NOT NULL
);

INSERT INTO `paciente` (`paciente_id`, `paciente_nombre`, `paciente_apepat`, `paciente_direccion`, `paciente_movil`, `paciente_sexo`, `paciente_fenac`, `paciente_nrodocumento`, `paciente_estatus`) VALUES
(55, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE `procedimineto` (
  `procedimiento_id` int(11) NOT NULL,
  `procedimiento_nombre` int(11) NOT NULL,
  `procedimiento_estatus` int(11) NOT NULL
);

CREATE TABLE `rol` (
  `rol_id` int(10) NOT NULL
);

INSERT INTO `rol` (`rol_id`) VALUES
(1),
(2);

CREATE TABLE `usuario` (
  `usu_id` int(10) NOT NULL,
  `rol_id` int(10) NOT NULL
);

INSERT INTO `usuario` (`usu_id`, `rol_id`) VALUES
(4, 1);

ALTER TABLE `cita`
  ADD PRIMARY KEY (`cita_id`),
  ADD UNIQUE KEY `medico_id` (`medico_id`),
  ADD UNIQUE KEY `paciente_id` (`paciente_id`);

ALTER TABLE `consulta_medica`
  ADD PRIMARY KEY (`consulta_id`),
  ADD UNIQUE KEY `cita_id` (`cita_id`);

ALTER TABLE `detalle_insumo`
  ADD PRIMARY KEY (`detain_id`),
  ADD UNIQUE KEY `insumo_id` (`insumo_id`),
  ADD UNIQUE KEY `fua_id` (`fua_id`);

ALTER TABLE `detalle_medicamento`
  ADD PRIMARY KEY (`detame_id`),
  ADD UNIQUE KEY `fua_id` (`fua_id`),
  ADD UNIQUE KEY `medicamento_id` (`medicamento_id`);

ALTER TABLE `detalle_procedimiento`
  ADD PRIMARY KEY (`detaproce_id`),
  ADD UNIQUE KEY `procedimiento_id` (`procedimiento_id`),
  ADD UNIQUE KEY `dua_id` (`fua_id`);

ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`especialidad_id`);

ALTER TABLE `fua`
  ADD PRIMARY KEY (`fua_id`),
  ADD UNIQUE KEY `historia_id` (`historia_id`),
  ADD UNIQUE KEY `consulta_id` (`consulta_id`);

ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`historia_id`),
  ADD UNIQUE KEY `paciente_id` (`paciente_id`);

ALTER TABLE `insumo`
  ADD PRIMARY KEY (`insumo_id`);

ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`medicamento_id`);

ALTER TABLE `medico`
  ADD PRIMARY KEY (`medico_id`),
  ADD UNIQUE KEY `especialidad_id` (`especialidad_id`),
  ADD UNIQUE KEY `usu_id` (`usu_id`);

ALTER TABLE `paciente`
  ADD PRIMARY KEY (`paciente_id`);

ALTER TABLE `procedimineto`
  ADD PRIMARY KEY (`procedimiento_id`);

ALTER TABLE `rol`
  ADD PRIMARY KEY (`rol_id`);

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD UNIQUE KEY `rol_id` (`rol_id`);

ALTER TABLE `cita`
  MODIFY `cita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

ALTER TABLE `consulta_medica`
  MODIFY `consulta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `detalle_insumo`
  MODIFY `detain_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `detalle_medicamento`
  MODIFY `detame_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `detalle_procedimiento`
  MODIFY `detaproce_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `especialidad`
  MODIFY `especialidad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `fua`
  MODIFY `fua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

ALTER TABLE `historia_clinica`
  MODIFY `historia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

ALTER TABLE `insumo`
  MODIFY `insumo_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `medicamento`
  MODIFY `medicamento_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `medico`
  MODIFY `medico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `paciente`
  MODIFY `paciente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

ALTER TABLE `procedimineto`
  MODIFY `procedimiento_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `rol`
  MODIFY `rol_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `usuario`
  MODIFY `usu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`paciente_id`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`medico_id`);

ALTER TABLE `consulta_medica`
  ADD CONSTRAINT `consulta_medica_ibfk_1` FOREIGN KEY (`cita_id`) REFERENCES `cita` (`cita_id`);

ALTER TABLE `detalle_insumo`
  ADD CONSTRAINT `detalle_insumo_ibfk_1` FOREIGN KEY (`insumo_id`) REFERENCES `insumo` (`insumo_id`),
  ADD CONSTRAINT `detalle_insumo_ibfk_2` FOREIGN KEY (`fua_id`) REFERENCES `fua` (`fua_id`);

ALTER TABLE `detalle_medicamento`
  ADD CONSTRAINT `detalle_medicamento_ibfk_1` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`medicamento_id`),
  ADD CONSTRAINT `detalle_medicamento_ibfk_2` FOREIGN KEY (`fua_id`) REFERENCES `fua` (`fua_id`);

ALTER TABLE `detalle_procedimiento`
  ADD CONSTRAINT `detalle_procedimiento_ibfk_1` FOREIGN KEY (`fua_id`) REFERENCES `fua` (`fua_id`),
  ADD CONSTRAINT `detalle_procedimiento_ibfk_2` FOREIGN KEY (`detaproce_id`) REFERENCES `procedimineto` (`procedimiento_id`);

ALTER TABLE `fua`
  ADD CONSTRAINT `fua_ibfk_1` FOREIGN KEY (`historia_id`) REFERENCES `historia_clinica` (`historia_id`),
  ADD CONSTRAINT `fua_ibfk_2` FOREIGN KEY (`consulta_id`) REFERENCES `consulta_medica` (`consulta_id`);

ALTER TABLE `historia_clinica`
  ADD CONSTRAINT `historia_clinica_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`paciente_id`);

ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`usu_id`) REFERENCES `usuario` (`usu_id`),
  ADD CONSTRAINT `medico_ibfk_2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`especialidad_id`);

ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`);
COMMIT;