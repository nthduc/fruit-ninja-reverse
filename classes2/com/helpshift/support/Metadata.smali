.class public Lcom/helpshift/support/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field private issueTags:[Ljava/lang/String;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/helpshift/support/Metadata;-><init>(Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 31
    iput-object p1, p0, Lcom/helpshift/support/Metadata;->metadata:Ljava/util/Map;

    :cond_7
    if-eqz p2, :cond_e

    .line 34
    array-length p1, p2

    if-lez p1, :cond_e

    .line 35
    iput-object p2, p0, Lcom/helpshift/support/Metadata;->issueTags:[Ljava/lang/String;

    :cond_e
    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/helpshift/support/Metadata;->metadata:Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    :cond_c
    iget-object v1, p0, Lcom/helpshift/support/Metadata;->issueTags:[Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v2, "hs-tags"

    .line 48
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method
