.class public Lcom/chartboost/sdk/impl/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/v0;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/v0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w0;->a:Lcom/chartboost/sdk/impl/v0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w0;->a:Lcom/chartboost/sdk/impl/v0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v0;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    return-object p1
.end method
