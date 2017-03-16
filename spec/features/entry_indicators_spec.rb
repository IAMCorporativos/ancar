require 'rails_helper'

feature "Entry Indicators" do

  describe "muestra datos de una unidad " do
    it 'primera unidad de la organización' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      click_link("Procesos y subprocesos", :match => :first)
      click_link('Periodo de análisis de datos', :match => :first)
      within('div#unit') do
        expect(page).to have_content 'DEPARTAMENTO DE SERVICIOS JURIDICOS'
      end

    end

    it 'cambia de unidad' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)

      click_link("Procesos y subprocesos", :match => :first)
      click_link('Periodo de análisis de datos', :match => :first)
      click_link 'SECRETARIA DE DISTRITO'
      within('div#unit') do
        expect(page).to have_content 'SECRETARIA DE DISTRITO'
      end
    end

    it 'muestra efectivos de unidad' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first
      add_staff("Unit", unit.id, unit.id, period, 1, 0.5, 1, 0.5)
      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      within("table#staff_Unit") do
        expect(page).to have_content("1,0", count: 2)
        expect(page).to have_content("0,5", count: 2)
      end
    end
  end

  describe "Process" do

    it ' show SGT data' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first

      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS'
      end
    it ' show Distritos' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first

      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

    end

  end

  describe 'formulario de actualización' do

    it 'es editable si usuario con permiso y periodo abierto: aparecen botones y campos imput ' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first

      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

    end
    it 'no es editable si usuario sin permiso y periodo abierto no botones y campos input' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first

      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

    end
    it 'no es editable si periodo cerrado' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first

      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

    end
    it 'no es editable si tiene VºBº del validador' do
      user= create(:user, :with_two_organizations)
      login_as_authenticated_user(user)
      organization_role = Organization.find_roles(:unit_user, user).first
      organization = Organization.find(organization_role.resource_id)
      unit = organization.units.first

      period = Period.first

      click_link("Procesos y subprocesos", :match => :first)

      within("#organization_#{organization.id}") do
        click_link 'Periodo de análisis de datos'
      end

      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
      expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

    end

    describe " botones en entrada de datos  " do
      it ' Sin cambios de plantilla ' do
        user= create(:user, :with_two_organizations)
        login_as_authenticated_user(user)
        organization_role = Organization.find_roles(:unit_user, user).first
        organization = Organization.find(organization_role.resource_id)
        unit = organization.units.first

        period = Period.first

        click_link("Procesos y subprocesos", :match => :first)

        within("#organization_#{organization.id}") do
          click_link 'Periodo de análisis de datos'
        end

        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

      end
      it ' Con cambios de plantilla' do
        user= create(:user, :with_two_organizations)
        login_as_authenticated_user(user)
        organization_role = Organization.find_roles(:unit_user, user).first
        organization = Organization.find(organization_role.resource_id)
        unit = organization.units.first

        period = Period.first

        click_link("Procesos y subprocesos", :match => :first)

        within("#organization_#{organization.id}") do
          click_link 'Periodo de análisis de datos'
        end

        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

      end
    end

    describe "Acciones y Validaciones comunes Guardar Datos y Cerrar entrada datos " do
      it ' coherencia indicadores: cantidad/plantilla asignada' do
        user= create(:user, :with_two_organizations)
        login_as_authenticated_user(user)
        organization_role = Organization.find_roles(:unit_user, user).first
        organization = Organization.find(organization_role.resource_id)
        unit = organization.units.first

        period = Period.first

        click_link("Procesos y subprocesos", :match => :first)

        within("#organization_#{organization.id}") do
          click_link 'Periodo de análisis de datos'
        end

        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

      end
      it ' plantilla utilizada mayor que asignada' do
        user= create(:user, :with_two_organizations)
        login_as_authenticated_user(user)
        organization_role = Organization.find_roles(:unit_user, user).first
        organization = Organization.find(organization_role.resource_id)
        unit = organization.units.first

        period = Period.first

        click_link("Procesos y subprocesos", :match => :first)

        within("#organization_#{organization.id}") do
          click_link 'Periodo de análisis de datos'
        end

        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

      end
      it ' mayor salida que stock/entrada' do
        user= create(:user, :with_two_organizations)
        login_as_authenticated_user(user)
        organization_role = Organization.find_roles(:unit_user, user).first
        organization = Organization.find(organization_role.resource_id)
        unit = organization.units.first

        period = Period.first

        click_link("Procesos y subprocesos", :match => :first)

        within("#organization_#{organization.id}") do
          click_link 'Periodo de análisis de datos'
        end

        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

      end
    end

    describe "Acciones y Validaciones exclusiva de Cerrar entrada datos " do
      it ' datos sin cumplimentar' do
        user= create(:user, :with_two_organizations)
        login_as_authenticated_user(user)
        organization_role = Organization.find_roles(:unit_user, user).first
        organization = Organization.find(organization_role.resource_id)
        unit = organization.units.first

        period = Period.first

        click_link("Procesos y subprocesos", :match => :first)

        within("#organization_#{organization.id}") do
          click_link 'Periodo de análisis de datos'
        end

        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO JURIDICO'
        expect(page).to have_content 'TRAMITACIÓN Y SEGUIMIENTO DE CONTRATOS Y CONVENIOS DEPARTAMENTO TÉCNICO'

      end
    end
  end
end
