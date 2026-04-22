import smail/style

pub fn basic_rem_to_px_test() {
  assert style.rem_to_px("0.5rem") == "8px"
  assert style.rem_to_px("1.5rem") == "24px"
  assert style.rem_to_px("2.0rem") == "32px"
  assert style.rem_to_px("1rem") == "16px"
  assert style.rem_to_px("0 rem") == "0 rem"
  assert style.rem_to_px("16px") == "16px"
  assert style.rem_to_px("16em") == "16em"
}

pub fn advanced_rem_to_px_test() {
  assert style.rem_to_px("0.5rem 1.5rem 2.0rem 1rem") == "8px 24px 32px 16px"
  assert style.rem_to_px("0.5em 20% 2.0rem 1px") == "0.5em 20% 32px 1px"
}
