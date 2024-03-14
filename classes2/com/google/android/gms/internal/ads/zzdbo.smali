.class public final Lcom/google/android/gms/internal/ads/zzdbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdbp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzguz:Landroid/view/View;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdok;Landroid/view/ViewGroup;)V
    .registers 5
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzguy:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzguz:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdbp;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzguy:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>(Lcom/google/android/gms/internal/ads/zzdbo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzark()Lcom/google/android/gms/internal/ads/zzdbp;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzbpf:Lcom/google/android/gms/internal/ads/zzvn;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzguz:Landroid/view/View;

    :goto_f
    if-eqz v4, :cond_45

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_45

    const/4 v6, -0x1

    .line 15
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_23

    .line 16
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 17
    :cond_23
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "index_of_child"

    .line 19
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    instance-of v4, v5, Landroid/view/View;

    if-eqz v4, :cond_45

    .line 22
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_f

    .line 25
    :cond_45
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/util/List;)V

    return-object v0
.end method
