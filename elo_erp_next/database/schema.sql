-- ERP Elo+ - estrutura inicial Supabase
create table if not exists clientes (
  id uuid primary key default gen_random_uuid(),
  nome text not null unique,
  aliases text[] default '{}',
  telefone text,
  email text,
  cidade text,
  tipo text default 'B2B',
  observacoes text,
  created_at timestamptz default now()
);

create table if not exists pedidos (
  id uuid primary key default gen_random_uuid(),
  data date not null,
  cliente_id uuid references clientes(id),
  cliente_nome text not null,
  produto text not null,
  categoria text,
  quantidade numeric default 1,
  valor_total numeric default 0,
  valor_recebido numeric default 0,
  status_pagamento text default 'Aberto',
  status_producao text default 'Por fazer',
  observacoes text,
  created_at timestamptz default now()
);

create table if not exists historico_alteracoes (
  id uuid primary key default gen_random_uuid(),
  pedido_id uuid references pedidos(id),
  descricao text not null,
  created_at timestamptz default now()
);
