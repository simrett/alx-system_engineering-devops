#install flask on puppet link
package { 'flask':
  ensure   => 'latest',
  provider => 'pip3',
}
