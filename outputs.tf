output "id_output" {
    value = "${formatlist("secret:%s",random_string.id.*.result)}"
    sensitive =false
}