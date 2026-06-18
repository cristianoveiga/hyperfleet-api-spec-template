import "./model.tsp";
import "hyperfleet/shared/models/clusters/model.tsp";

const exampleClusterPatchRequest: ClusterPatchRequest = #{
  spec: #{
    platform: #{
      type: "GCP",
      gcp: #{
        projectID: "my-gcp-project",
        region: "us-central1",
        network: "cluster-123-network",
        subnet: "cluster-123-subnet",
        endpointAccess: EndpointAccess.PublicAndPrivate,
      },
    },
    release: #{
      version: "4.22.1",
      channelGroup: "stable",
    },
  },
  labels: #{ env: "staging" },
};
