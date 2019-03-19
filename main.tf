resource "random_string" "id" {
    count = "${var.random_count}"
    length = "${var.random_len}"
    special = "${var.random_special}"
    provisioner "local-exec" {
      command = "echo ${random_string.id.result} > result.txt"
    }
}
