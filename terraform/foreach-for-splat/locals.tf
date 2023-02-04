locals {
  files                 = ["zips.json", "report.csv", "sitemap.xml"]
  file_extensions       = [for file in local.files : regex("\\.[0-9a-z]+$", file)]
  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }


  ips = [
    {
      public : "123.123.123.12",
      private : "321.321.321.32",
    },
    {
      public : "423.523.723.12",
      private : "841.381.371.32"
    }
  ]
}