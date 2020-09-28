class SysController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def iniciosesion

  end

  def admon
    @sucursals = Sucursal.all
    @empleados = Empleado.all
  end

  def edempleado
  end

  def edsucursal
    @empleados = Empleado.all
    @sucursals = Sucursal.all
  end

  def regempleado
  end

  def registro
  end

  def regsucursal
  end
end
