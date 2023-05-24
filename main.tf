resource "aws_s3_bucket" "b" {
  bucket = "bucket-testing-may23"
}

resource "aws_dynamodb_table" "db" {
    name = "table_testing"
    read_capacity = 2
    write_capacity = 2
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        Name        = "dynamodb-table-1"
    }
}