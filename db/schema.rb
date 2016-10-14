# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161014180646) do

  create_table "members", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "index"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "tipo_contrato"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "oficina"
    t.boolean  "computo"
    t.boolean  "telefono"
    t.boolean  "llamadas_ld"
    t.boolean  "usuario_novell"
    t.boolean  "lotus_notes"
    t.boolean  "acceso_umoja"
    t.boolean  "lista_correo"
    t.boolean  "acceso_shared"
    t.string   "numero_oficina"
    t.string   "extension"
    t.text     "roles_umoja"
    t.text     "programas"
    t.string   "nombre_solicitante"
    t.string   "email_solicitante"
    t.string   "numero_credencial"
    t.string   "sec_in_numero_pase"
    t.boolean  "sec_in_tiene_llaves"
    t.integer  "sec_in_numero_llaves"
    t.boolean  "sec_in_fotografia"
    t.text     "sec_in_comentarios"
    t.boolean  "sec_in_aprobado"
    t.boolean  "sg_in_notificacion_recepcion"
    t.string   "sg_in_credencial_edificio"
    t.string   "sg_in_tarjeta_estacionamiento"
    t.boolean  "sg_in_aprobado"
    t.string   "utic_in_inventario_pc"
    t.string   "utic_in_extension"
    t.boolean  "utic_in_ld"
    t.string   "utic_in_usuario_novell"
    t.string   "utic_in_email_cepal"
    t.boolean  "utic_in_aprobado"
    t.boolean  "cridd_in_servicios"
    t.boolean  "cridd_in_aprobado"
    t.datetime "sec_in_date_aprobado"
    t.datetime "sg_in_date_aprobado"
    t.datetime "utic_in_date_aprobado"
    t.datetime "cridd_in_date_aprobado"
  end

end
