return {
  {
    dir = "~/.config/nvim/lua/plugins/sqlflick",
    config = function()
      require("sqlflick").setup({
        enabled = true,
        databases = {
          {
            name = "local_postgres",
            type = "postgresql",
            host = "localhost",
            port = 5432,
            database = "mydb",
            username = "user",
            password = "pass",
          },
          {
            name = "production_mysql",
            type = "mysql",
            host = "db.example.com",
            port = 3306,
            database = "production",
            username = "admin",
            password = "secret",
          },
        },
        selector = {
          width = 60,
          height = 15,
          border = "rounded",
        },
      })
    end,
  },
}
