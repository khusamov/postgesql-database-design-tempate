create table payments
(
    id       serial
             constraint payments_pk
             primary key,
    tutor_id integer
             constraint payments_tutors_id_fk
             references tutors,
    value    integer
);

comment on table payments is 'Оплаты за обучение';

comment on column payments.value is 'Значение оплаты в рублях';

alter table payments
    owner to postgres;