CREATE TABLE public.users (
    id serial NOT NULL,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

CREATE TABLE public.todos (
    id serial NOT NULL,
    created_at timestamp NOT NULL DEFAULT NOW(),
    title varchar(255) NULL,
    description varchar(255) NULL,
    due_at DATE NULL,
    completed_at DATE NULL,
    user_id integer NULL,
    CONSTRAINT todos_pkey PRIMARY KEY (id),
    CONSTRAINT todos_user_fk FOREIGN KEY (user_id) REFERENCES public.users(id),
    CONSTRAINT todos_user_unique UNIQUE (user_id)
);