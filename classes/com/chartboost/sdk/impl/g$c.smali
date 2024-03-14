.class Lcom/chartboost/sdk/impl/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field protected a:Lcom/chartboost/sdk/Model/c;

.field protected b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/chartboost/sdk/impl/g$c;->a:Lcom/chartboost/sdk/Model/c;

    .line 3
    iput-object p3, p0, Lcom/chartboost/sdk/impl/g$c;->b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-void
.end method
