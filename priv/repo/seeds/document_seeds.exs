alias PmExample.Repo
alias PmExample.Management.Document # . corresponds to directory

Repo.insert! %Document{
  name: "d1",
  content: "content1",
  view_count: 1,
  published: true,
  project_id: 1
}

Repo.insert! %Document{
  name: "d2",
  content: "content21",
  view_count: 2,
  published: true,
  project_id: 1
}

Repo.insert! %Document{
  name: "Third Document",
  content: "This is some great content",
  view_count: 1,
  published: false,
  project_id: 2
}

Repo.insert! %Document{
  name: "Fourth Document",
  content: "Content conntent content",
  view_count: 1,
  published: true,
  project_id: 3
}

Repo.insert! %Document{
  name: "Fifth Document",
  content: "Get with it",
  view_count: 1,
  published: false,
  project_id: 3
}
