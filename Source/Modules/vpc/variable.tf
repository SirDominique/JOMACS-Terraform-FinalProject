variable "vpc_cidr"{
    description = "VPC Cidr Block"
    default = "177.70.0.0/24"
    type = string
    sensitive = true
}

variable "vpc_tenancy" {
   description = "VPC Tenancy"
   default = "default"
   type = string  
   sensitive = true
}
 
variable "vpc_name" {
   description = "Pixa_vpc"
   default = "vpc-name"
   type = string 
}


variable "public_sn1_cidr" {
    description = "public subnet cidr Block"
    default = "177.70.0.0/26"
    type = string
    sensitive = true
}

variable "az1" {
   description = "Availability zone 1 for the VPC"
   default     = "us-west-2a"
   type        = string
}

variable "public_sn1_name" {
    description = "Name for public subnet1"
    default = "public_sn1"
    type = string
}

variable "public_sn2_cidr" {
    description = "public subnet cidr Block"
    default = "177.70.0.64/26"
    type = string
    sensitive = true
}

variable "az2" {
   description = "Availability zone 2 for the VPC."
   default     = "us-west-2b"
   type        = string
}

 variable "public_sn2_name" {
    description = "Name for public subnet2"
    default = "public-sn2"
    type = string
    sensitive = true
 }
 
 variable "private_sn_cidr" {
    description = "private subnet cidr Block"
    default = "177.70.0.128/26"
    type = string
    sensitive = true
 }

 variable "private_sn_name" {
    description = "Name for Private subnet"
    default = "private-sn1"
    type = string
    sensitive = true
 }

variable "internet_gateway_name" {
   description = "Internet Gateway Name"
   default     = "tfproject_igw"
   type        = string
}

variable "nat_gateway_name"{
   description = "Nat gateway name"
   default     = "tfproject_ngw"
   type        = string
}

variable "default_route" {
   description = "Default route cidr"
   default     = ["0.0.0.0/0"]
   type        = list(string)
   sensitive = true
}

variable "ngw_cidr" {
   default = "0.0.0.0/0"
   type    = string
}

variable "ngw_cidr_v6" {
   default = "::/0"
   type    = string
}

variable "lb_out" {
   description = "Load balancer outbound cidr"
   default     = ["177.70.0.128/26"]
   type        = list(string)
   sensitive = true
}

variable "tfproject_pub_rt_name" {
   description = "Public Route Table name"
   default     = "tfproject_pub_rt"
   type        = string
}

variable "tfproject_private_rt_name" {
   description = "Private Route table name"
   default     = "tfproject_private_rt" 
   type        = string
}

variable "lb_type" {
   description = "Load Balancer type (Application)"
   default     = "application"
   type        = string
}

variable "lb-name" {
   description = "load balancer name"
   default     = "tfproject-lb"
   type        = string
}


variable  "lb_sg_name" {
   description = "Security Group name for Load Balancer"
   default     = "tfproject_lb_sg"
   type        = string
}

variable "web" {
   description = "web traffic port"
   default     = 80
   type        = number
}

variable "lb_protocol" {
   description = "Protocol to be used by load balancer security group"
   default     = "TCP"
   type        = string
}

variable "web-group" {
   default = "tfproject-target-group"
   type    = string
}



variable "lb_listener_protocol" {
   default = "HTTP"
   type = string
}

variable "lb_action" {
   description = "Action on LB"
   default     = "forward"
   type        = string
}


variable "target_id" {
}


variable "instance_sg_name" {
   description = "Instance Security group name"
   default     = "tfproject-instancesg"
   type        = string
}
 


