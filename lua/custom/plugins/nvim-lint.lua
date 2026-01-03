return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local lint = require 'lint'

    lint.linters_by_ft = {
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
      javascriptreact = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },
    }

    -- [수정] 에러를 방지하기 위해 함수 외부에서 경로를 계산하는 로직
    local function get_eslint_cwd()
      local root = vim.fs.find({ '.eslintrc.js', '.eslintrc.json', '.eslintrc', 'package.json', 'eslint.config.js' }, {
        path = vim.api.nvim_buf_get_name(0),
        upward = true,
      })[1]

      return root and vim.fs.dirname(root) or vim.fn.getcwd()
    end

    -- 파일을 저장하거나 읽을 때마다 실행
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        -- 실행 직전에 현재 파일에 맞는 cwd를 강제로 주입합니다.
        local eslint = lint.linters.eslint_d
        eslint.cwd = get_eslint_cwd()

        lint.try_lint()
      end,
    })

    -- 단축키 설정
    vim.keymap.set('n', '<leader>l', function()
      lint.linters.eslint_d.cwd = get_eslint_cwd()
      lint.try_lint()
    end, { desc = 'Trigger linting for current file' })
  end,
}
