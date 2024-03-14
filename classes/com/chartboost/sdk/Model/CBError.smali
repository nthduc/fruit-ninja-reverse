.class public final Lcom/chartboost/sdk/Model/CBError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/CBError$b;,
        Lcom/chartboost/sdk/Model/CBError$CBClickError;,
        Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    }
.end annotation


# instance fields
.field private final a:Lcom/chartboost/sdk/Model/CBError$b;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$b;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/Model/CBError;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Model/CBError$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/CBError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 3

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$a;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    .line 13
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 14
    :cond_1c
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 15
    :cond_1f
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0

    .line 16
    :cond_22
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0
.end method
