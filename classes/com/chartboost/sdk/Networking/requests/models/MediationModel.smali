.class public Lcom/chartboost/sdk/Networking/requests/models/MediationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adapterVersion:Ljava/lang/String;

.field private mediation:Ljava/lang/String;

.field private mediationVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->mediation:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->mediationVersion:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->adapterVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->adapterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMediation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->mediation:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;->mediationVersion:Ljava/lang/String;

    return-object v0
.end method
