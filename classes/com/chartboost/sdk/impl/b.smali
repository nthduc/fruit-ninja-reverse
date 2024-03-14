.class public Lcom/chartboost/sdk/impl/b;
.super Lcom/chartboost/sdk/impl/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 9

    const-string v1, "banner"

    const-string v2, "banner"

    const-string v3, "no native endpoint"

    const-string v4, "/auction/sdk/banner"

    const-string v5, "/banner/show"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
