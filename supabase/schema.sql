-- Run this once in the Supabase SQL editor:
-- https://supabase.com/dashboard/project/dxdgvhqfexfmwywhzmux/sql

create table if not exists poll_votes (
  id          uuid primary key default gen_random_uuid(),
  session_id  text not null,
  date        text not null,
  restaurant  text not null,
  constraint poll_votes_session_date_key unique (session_id, date)
);

alter table poll_votes enable row level security;

-- Public read (anyone can see vote counts)
create policy "public read"
  on poll_votes for select using (true);

-- Anyone can cast or change their vote
create policy "public insert"
  on poll_votes for insert with check (true);

create policy "public update"
  on poll_votes for update using (true);

create policy "public delete"
  on poll_votes for delete using (true);

-- Enable real-time for this table
alter publication supabase_realtime add table poll_votes;

create table if not exists poll_time_votes (
  id          uuid primary key default gen_random_uuid(),
  session_id  text not null,
  date        text not null,
  time_slot   text not null,
  constraint poll_time_votes_session_date_key unique (session_id, date)
);

alter table poll_time_votes enable row level security;

-- Public read (anyone can see vote counts)
create policy "public read"
  on poll_time_votes for select using (true);

-- Anyone can cast or change their vote
create policy "public insert"
  on poll_time_votes for insert with check (true);

create policy "public update"
  on poll_time_votes for update using (true);

create policy "public delete"
  on poll_time_votes for delete using (true);

-- Enable real-time for this table
alter publication supabase_realtime add table poll_time_votes;
