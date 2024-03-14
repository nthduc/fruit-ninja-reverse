.class public final Lcom/google/android/gms/internal/ads/zzdif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdic;",
        ">;"
    }
.end annotation


# instance fields
.field private zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field zzgze:Lcom/google/android/gms/internal/ads/zztg;

.field zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzdzb;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdif;->zzgze:Lcom/google/android/gms/internal/ads/zztg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdif;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdif;->zzvr:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdic;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdif;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdie;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdie;-><init>(Lcom/google/android/gms/internal/ads/zzdif;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
