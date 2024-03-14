.class public Lcom/chartboost/sdk/impl/a1;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a1;->a:Lcom/chartboost/sdk/impl/v0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a1;->a:Lcom/chartboost/sdk/impl/v0;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/v0;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-static {p1}, Lcom/chartboost/sdk/impl/t0;->a(Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method
