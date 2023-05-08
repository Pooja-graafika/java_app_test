
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0e6da93467332a88e","subnet-0c00b4543768aa124","subnet-0999aa7beaa762f47","subnet-09c3d5636c8c4380f"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0e6da93467332a88e","subnet-0c00b4543768aa124","subnet-0999aa7beaa762f47","subnet-09c3d5636c8c4380f"]

        tags = {
             "Name" =  "node12"
         } 
  }
}