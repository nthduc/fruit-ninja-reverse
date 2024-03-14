.class public final Lcom/google/android/gms/internal/ads/zzdpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayh;
.implements Lcom/google/android/gms/internal/ads/zzbui;


# instance fields
.field private final zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

.field private final zzhgl:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzaxw;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayi;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzhgl:Ljava/util/HashSet;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzaxw;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzhgl:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzhgl:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 11
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzatu()Landroid/os/Bundle;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzayi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayh;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    monitor-enter p0

    .line 6
    :try_start_1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzdyh:Lcom/google/android/gms/internal/ads/zzayi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzhgl:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzayi;->zzb(Ljava/util/HashSet;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 8
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
