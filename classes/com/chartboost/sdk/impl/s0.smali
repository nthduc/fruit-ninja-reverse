.class public Lcom/chartboost/sdk/impl/s0;
.super Lcom/chartboost/sdk/impl/p0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;Lcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V
    .registers 15

    const-string v1, "https://live.chartboost.com"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/Networking/c;->i:I

    .line 3
    invoke-direct {p0, p4}, Lcom/chartboost/sdk/impl/s0;->a(Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;)V

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;)V
    .registers 4

    const-string v0, "cached"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/chartboost/sdk/Networking/requests/models/ShowParamsModel;->getAdId()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "ad_id"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method
