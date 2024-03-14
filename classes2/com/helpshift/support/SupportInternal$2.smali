.class final Lcom/helpshift/support/SupportInternal$2;
.super Ljava/lang/Object;
.source "SupportInternal.java"

# interfaces
.implements Lcom/helpshift/support/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/SupportInternal;->setMetadataCallback(Lcom/helpshift/support/MetadataCallable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$metadataCallable:Lcom/helpshift/support/MetadataCallable;


# direct methods
.method constructor <init>(Lcom/helpshift/support/MetadataCallable;)V
    .registers 2

    .line 855
    iput-object p1, p0, Lcom/helpshift/support/SupportInternal$2;->val$metadataCallable:Lcom/helpshift/support/MetadataCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/util/HashMap;
    .registers 3

    .line 858
    iget-object v0, p0, Lcom/helpshift/support/SupportInternal$2;->val$metadataCallable:Lcom/helpshift/support/MetadataCallable;

    invoke-interface {v0}, Lcom/helpshift/support/MetadataCallable;->call()Lcom/helpshift/support/Metadata;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 860
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/helpshift/support/Metadata;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/util/Map;
    .registers 2

    .line 855
    invoke-virtual {p0}, Lcom/helpshift/support/SupportInternal$2;->call()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
