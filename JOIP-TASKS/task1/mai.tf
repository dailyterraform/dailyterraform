resource "aws_key_pair" "my_id_rsa" {
  key_name   = "id_rsa.pem"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyE5PXhY1w2lcNPONkQOoIzx8ZCZD9xj4X1i3L6WLyPoo3mLw/a2sdpA2KGSskgKk73fsPBkEh6DaNIezeIPZ9V1l4NWAWMlUclNmhmGNp3UYo06E8kwA3qUT9Eo8ZS/fPp2ELwHBx91O5AEtJOBXOfOW4P1XgoW8fa+uUps6gfWP2fhAna7DqD5TUDH3q4xVG5mKCAeHgD98k0XbDVSzW19dnCdTL37otx+sKviOdmB0/WKwa08MOfR/c511HeaUGKz7SXnb0m48B/XDAa6iRXjYbnfQr0rBB3U5Jwouw2vureHaLTtf1/2buZJbNGLCbi9Fw0Vp8SgFzv1JEvaeBuvTarMRJcCBNqNIpe4GFaU2ccc5/BHCa6yFmCB19bBJy3YSEkruy8vHwSrJwMPaIG3DCGyaJMN+jteiwRw9Gh8TwoarbSIP2yNUT7TtLalM/JIVaYehcuMgzFnHm8tLRsOQXdXDXIRhPUq6LzEM/98uDCCRhbDxEATtbvbv2+n0= anil@REDFiRE"

}

resource "aws_instance" "ec2machine" {
  ami           = "ami-0376ec8eacdf70aae"
  instance_type = "t2.micro"
  tags = {
    "Name" = "ec2machine"
  }
}