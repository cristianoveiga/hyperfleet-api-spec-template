model ClusterSpec {
    infraID?: string;
    issuerURL?: string;
    platform: ClusterPlatformSpec;
    release?: ReleaseSpec;
    networking?: NetworkingSpec;
    dns?: DNSSpec;
}

model ClusterPlatformSpec {
    type: "GCP";
    gcp: ClusterPlatform;
}

model ClusterPlatform {
    projectID?: string;
    region?: string;
    network?: string;
    subnet?: string;
    endpointAccess?: EndpointAccess;
    workloadIdentity?: WorkloadIdentitySpec;
}

enum EndpointAccess {
    Public: "Public",
    Private: "Private",
    PublicAndPrivate: "PublicAndPrivate",
}

model WorkloadIdentitySpec {
    projectNumber?: string;
    poolID?: string;
    providerID?: string;
    serviceAccountsRef?: ServiceAccountsRef;
}

model ServiceAccountsRef {
    controlPlaneEmail?: string;
    nodePoolEmail?: string;
    cloudControllerEmail?: string;
    storageEmail?: string;
    imageRegistryEmail?: string;
    networkEmail?: string;
}

model ReleaseSpec {
    image?: string;
    version?: string;
    channelGroup?: string;
}

model NetworkingSpec {
    clusterNetwork?: ClusterNetworkEntry[];
    serviceNetwork?: string[];
}

model ClusterNetworkEntry {
    cidr?: string;
    hostPrefix?: integer;
}

model DNSSpec {
    baseDomain?: string;
}
