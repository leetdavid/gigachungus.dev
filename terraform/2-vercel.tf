resource "vercel_project" "gigachungus_dev" {
  name      = "gigachungus-dev"
  framework = "sveltekit-1"
  git_repository = {
    type              = "github"
    repo              = "leetdavid/gigachungus.dev"
    production_branch = "main"
  }
  root_directory             = "web"
  serverless_function_region = "hkg1"
}

resource "vercel_project_domain" "gigachungus_dev" {
  for_each   = toset(["gigachungus.dev", "www.gigachungus.dev"])
  project_id = vercel_project.gigachungus_dev.id
  domain     = each.key
}
