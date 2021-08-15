return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 100,
  height = 30,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 7,
  nextobjectid = 5,
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 1,
      margin = 0,
      columns = 8,
      image = "tiles.png",
      imagewidth = 265,
      imageheight = 199,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      wangsets = {},
      tilecount = 48,
      tiles = {
        {
          id = 0,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "Trigger",
                shape = "rectangle",
                x = 17.5226,
                y = 17.61,
                width = 13.95,
                height = 14.0351,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "hero",
      firstgid = 49,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "../hero.png",
      imagewidth = 96,
      imageheight = 80,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 30,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 500
            },
            {
              tileid = 1,
              duration = 500
            },
            {
              tileid = 2,
              duration = 500
            },
            {
              tileid = 0,
              duration = 500
            },
            {
              tileid = 1,
              duration = 500
            },
            {
              tileid = 2,
              duration = 500
            },
            {
              tileid = 3,
              duration = 100
            }
          }
        },
        {
          id = 6,
          animation = {
            {
              tileid = 6,
              duration = 200
            },
            {
              tileid = 7,
              duration = 200
            },
            {
              tileid = 8,
              duration = 200
            },
            {
              tileid = 9,
              duration = 200
            },
            {
              tileid = 10,
              duration = 200
            },
            {
              tileid = 11,
              duration = 200
            }
          }
        },
        {
          id = 12,
          animation = {
            {
              tileid = 12,
              duration = 500
            },
            {
              tileid = 13,
              duration = 500
            },
            {
              tileid = 14,
              duration = 500
            }
          }
        },
        {
          id = 18,
          animation = {
            {
              tileid = 18,
              duration = 200
            },
            {
              tileid = 19,
              duration = 200
            },
            {
              tileid = 20,
              duration = 200
            },
            {
              tileid = 21,
              duration = 200
            },
            {
              tileid = 22,
              duration = 200
            },
            {
              tileid = 23,
              duration = 200
            }
          }
        },
        {
          id = 24,
          animation = {
            {
              tileid = 24,
              duration = 200
            },
            {
              tileid = 25,
              duration = 200
            },
            {
              tileid = 24,
              duration = 200
            },
            {
              tileid = 26,
              duration = 200
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 100,
      height = 30,
      id = 1,
      name = "Main",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "base64",
      compression = "gzip",
      data = "H4sIAAAAAAAACu3ZuwrCQBBG4alULKKtWhgVvIKWvv+b5V9s1lyQgMkM4XxwmoTsDmyxRcwAYBo2aqt2jnvnecwRyUEd1clx7zyPOSK5qbt6OO6d5zEHgGnwvO/R5Hnfo8nzvgcAAAAQ20zN1aLj/XLEWWBWqJVa155ffnxXqmvLsy77XlN9r/3q+W3bWuc/rDO0NGM6j6d9ziOdQf3/AsXrHWAGIiIiIiIiGrYKzf437uAuAAA="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "Hero",
          type = "Fixture",
          shape = "rectangle",
          x = 106.989,
          y = 639.96,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 49,
          visible = true,
          properties = {
            ["static"] = false
          }
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 172,
          y = 626.667,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 67,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
