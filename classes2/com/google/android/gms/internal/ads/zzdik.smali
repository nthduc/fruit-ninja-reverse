.class public final Lcom/google/android/gms/internal/ads/zzdik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdil;",
        ">;"
    }
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private zzgzh:Lcom/google/android/gms/internal/ads/zzaxt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxt;Lcom/google/android/gms/internal/ads/zzdzb;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdik;->zzgzh:Lcom/google/android/gms/internal/ads/zzaxt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdik;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdik;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdil;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcvp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdik;->zzgzh:Lcom/google/android/gms/internal/ads/zzaxt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdik;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxt;->zzeg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 13
    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdik;->zzgzh:Lcom/google/android/gms/internal/ads/zzaxt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdik;->packageName:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaxt;->zzeh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    const/4 v2, 0x2

    .line 15
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzdzc;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb([Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdin;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdin;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdzc;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 16
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdyv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
