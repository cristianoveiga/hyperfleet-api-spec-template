import "./model.tsp";
import "hyperfleet/shared/models/clusters/model.tsp";

const exampleClusterCreateRequest: ClusterCreateRequest = #{
  kind: "Cluster",
  name: "cluster-123",
  labels: #{ environment: "production", team: "platform" },
  spec: #{
    infraID: "cluster-123",
    issuerURL: "https://oidc.example.gcp-hcp.devshift.net/cluster-123",
    platform: #{
      type: "GCP",
      gcp: #{
        projectID: "my-gcp-project",
        region: "us-central1",
        network: "cluster-123-network",
        subnet: "cluster-123-subnet",
        endpointAccess: EndpointAccess.PublicAndPrivate,
        workloadIdentity: #{
          projectNumber: "123456789",
          poolID: "cluster-123-wi-pool",
          providerID: "cluster-123-k8s-provider",
          serviceAccountsRef: #{
            controlPlaneEmail: "cluster-123-ctrlplane@my-gcp-project.iam.gserviceaccount.com",
            nodePoolEmail: "cluster-123-nodepool@my-gcp-project.iam.gserviceaccount.com",
            cloudControllerEmail: "cluster-123-cloud-controller@my-gcp-project.iam.gserviceaccount.com",
            storageEmail: "cluster-123-pd-csi@my-gcp-project.iam.gserviceaccount.com",
            imageRegistryEmail: "cluster-123-image-registry@my-gcp-project.iam.gserviceaccount.com",
            networkEmail: "cluster-123-cloud-network@my-gcp-project.iam.gserviceaccount.com",
          },
        },
      },
    },
    release: #{
      version: "4.22.0",
      channelGroup: "stable",
    },
  }
};
