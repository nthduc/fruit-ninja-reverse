.class public final Lcom/google/android/gms/internal/ads/zzdgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdgj;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdgj;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdgl;-><init>(Lcom/google/android/gms/internal/ads/zzdgi;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzary()Lcom/google/android/gms/internal/ads/zzdgj;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzvr:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzvr:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzaz(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazd;->zzxy()Z

    move-result v4

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzvr:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzaw(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzvr:Landroid/content/Context;

    const-string v6, "com.google.android.gms.ads.dynamite"

    .line 12
    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->zzvr:Landroid/content/Context;

    .line 14
    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    move-object v0, v8

    move v6, v7

    move v7, v9

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdgj;-><init>(ZZLjava/lang/String;ZIII)V

    return-object v8
.end method
