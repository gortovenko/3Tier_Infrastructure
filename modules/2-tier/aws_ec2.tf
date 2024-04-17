####################  AWS EC2 #################### 

resource "aws_launch_configuration" "three-tier-mysql-lconfig" {
  name_prefix                                       = "three-tier-mysql-lconfig"
  image_id                                          = data.aws_ami.latest_ami.id
  instance_type                                     = var.instance_type
  key_name                                          = var.key_name_db
  security_groups                                   = [var.aws_security_group_private_sg_ids]
  user_data                                         = <<-EOF
                                                        #!/bin/bash

                                                        # Update the system
                                                        sudo yum -y update

                                                        # Install MySQL
                                                        sudo yum install mysql -y
                                                       
                                                        # Enable and start service
                                                        sudo systemctl start mysqld
                                                        sudo systemctl enable mysqld
                                                       
                                                        EOF

                                
  associate_public_ip_address                               = false
  lifecycle {
    prevent_destroy                                         = true
    ignore_changes                                          = all
  }
}