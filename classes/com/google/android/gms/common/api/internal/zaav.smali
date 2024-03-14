.class public final Lcom/google/android/gms/common/api/internal/zaav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabd;


# instance fields
.field private final zafy:Lcom/google/android/gms/common/api/internal/zabc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabc;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaav;->zafy:Lcom/google/android/gms/common/api/internal/zabc;

    return-void
.end method


# virtual methods
.method public final begin()V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaav;->zafy:Lcom/google/android/gms/common/api/internal/zabc;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabc;->zahd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    goto :goto_c

    .line 8
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaav;->zafy:Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahe:Ljava/util/Set;

    return-void
.end method

.method public final connect()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaav;->zafy:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->zaax()V

    return-void
.end method

.method public final disconnect()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaav;->zafy:Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method
