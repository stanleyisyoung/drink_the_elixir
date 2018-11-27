alias PmExample.Repo
alias PmExample.Management.Project

# ! throws error if something happens
Repo.insert! %Project{
  title: "Super cool proj 1",
  description: "d1"
}

Repo.insert! %Project{
  title: "Super cool proj 2",
  description: "d2"
}

Repo.insert! %Project{
  title: "Super cool proj 3",
  description: "d3"
}
