return {
  {
    "yetone/avante.nvim",
    opts = {
      -- 1. 将默认 provider 设置为我们下面定义的 'glm'
      provider = "glm",

      -- 2. 定义自定义厂商 (vendors)
      providers = {
        glm = {
          __inherited_from = "openai",
          endpoint = "https://open.bigmodel.cn/api/coding/paas/v4", -- 智谱官方的 OpenAI 兼容接口
          api_key_name = "ZHIPUAI_API_KEY", -- 对应环境变量名
          model = "GLM-4.7", -- 这里可以换成 "glm-4", "glm-4-plus" 等
        },
      },
    },
  },
}
