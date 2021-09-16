library(lintr)
lint_assignment = function() {
  arrow_assign = function(source_file) {
    lapply(ids_with_token(source_file, "LEFT_ASSIGN"), function(id) {
      parsed = with_id(source_file, id)
      Lint(filename = source_file$filename, line_number = parsed$line1, 
           column_number = parsed$col1, type = "style", 
           message = "Use =, not <-, for assignment.", 
           line = source_file$lines[as.character(parsed$line1)], 
           linter = "arrow_assignment_linter")
    })
  }
  
  linters = with_defaults(assignment_linter = NULL, arrow_assign = arrow_assign,
                          trailing_whitespace_linter = NULL,
                          line_length_linter(90), 
                          commented_code_linter = NULL, 
                          T_and_F_symbol_linter, 
                          undesirable_operator_linter,
                          semicolon_terminator_linter
                          )
  lintr::lint_dir(pattern = "\\.[Rr](md)?$", linters = linters)
}
