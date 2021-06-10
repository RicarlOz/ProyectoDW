-- Función para el trigger insert_propiedad_es_duenio
create or replace function tgr_esDuenio()
returns trigger as
    $func$
    begin
        update duenio
            set es_duenio = es_duenio || cast (row ( new.registrocaballo, new.rfcduenio ) as Es_duenio) -- Agrega la referencia a Propiedad al arreglo
            where rfc = new.rfcduenio;
        return new;
    end;
    $func$ language plpgsql;

drop trigger insert_propiedad_es_duenio on propiedad;

-- Trigger que actualiza el array es_duenio de dueño cuando se agrega una Propiedad donde él es el dueño
create trigger insert_propiedad_es_duenio
    before insert or update of rfcduenio
    on propiedad
    for each row execute procedure tgr_esDuenio();




-- Función para el trigger insert_propiedad_propiedad_de
create or replace function tgr_propiedadDe()
returns trigger as
    $func$
    begin
        update caballo
            set propiedad_de = array_append(propiedad_de, cast (row ( new.registrocaballo, new.rfcduenio ) as Propiedad_de))  -- Agrega la referencia a Propiedad al arreglo
            where registro = new.registrocaballo;
        return new;
    end;
    $func$ language plpgsql;

drop trigger insert_propiedad_propiedad_de on propiedad;

-- Trigger que actualiza el array propiedad_de de propiedad cuando se agrega una Propiedad donde el caballo tiene dueño
create trigger insert_propiedad_propiedad_de
    before insert or update of registrocaballo
    on propiedad
    for each row execute procedure tgr_propiedadDe();

-- Check entrenador
create or replace function tgr_checkEntrenador()
returns trigger as
    $func$
    begin
        if (new.rfc in (select rfc from persona)) then
            RAISE exception 'El RFC del entrenador debe ser único';
        end if;
        return new;
    end;
    $func$ language plpgsql;

drop trigger check_entrenador on entrenador;

create trigger check_entrenador
    before insert or update of rfc
    on entrenador
    for each row execute procedure tgr_checkEntrenador();

-- Check duenio
create or replace function tgr_checkDuenio()
returns trigger as
    $func$
    begin
        if (new.rfc in (select rfc from persona)) then
            RAISE exception 'El RFC del dueño debe ser único';
        end if;
        return new;
    end;
    $func$ language plpgsql;

drop trigger check_duenio on duenio;

create trigger check_duenio
    before insert or update of rfc
    on duenio
    for each row execute procedure tgr_checkDuenio();

-- Check jockey
create or replace function tgr_checkJockey()
returns trigger as
    $func$
    begin
        if (new.rfc in (select rfc from persona)) then
            RAISE exception 'El RFC del jockey debe ser único';
        end if;
        return new;
    end;
    $func$ language plpgsql;

drop trigger check_jockey on jockey;

create trigger check_jockey
    before insert or update of rfc
    on jockey
    for each row execute procedure tgr_checkJockey();

create or replace function tgr_checkEntrena()
returns trigger as
    $func$
    begin
        if ((not exists (select registro from caballo)) or (not (new.entrena <@ (select array_agg(registro) from caballo)))) then
            RAISE exception 'entrena debe contener llaves foraneas de caballo';
        end if;
        return new;
    end;
    $func$ language plpgsql;

drop trigger insert_caballo_entrenado on entrenador;

create trigger insert_caballo_entrenado
    before insert or update of entrena
    on entrenador
    for each row execute procedure tgr_checkEntrena();

