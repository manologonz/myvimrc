local saga = require'lspsaga'

saga.init_lsp_saga {
    error_sign = '',
    diagnostic_header_icon = "   ",
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    code_action_icon = '',
    border_style = "round",
    rename_prompt_prefix = '➤'
}
