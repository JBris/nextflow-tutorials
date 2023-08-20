process foo {
  echo true
  '''
  env | egrep 'ALPHA|BETA'
  '''
}
