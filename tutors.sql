CREATE TABLE public.tutors
(
	id          serial CONSTRAINT tutors_pk PRIMARY KEY,
	name        varchar(100) NOT NULL,
	surname     varchar(100) NOT NULL,
	middle_name varchar(100) DEFAULT NULL
);

COMMENT ON TABLE public.tutors IS 'Репетиторы';

COMMENT ON COLUMN public.tutors.name IS 'Имя';

COMMENT ON COLUMN public.tutors.surname IS 'Фамилия';

COMMENT ON COLUMN public.tutors.middle_name IS 'Отчество';

ALTER TABLE public.tutors
	OWNER TO postgres;

