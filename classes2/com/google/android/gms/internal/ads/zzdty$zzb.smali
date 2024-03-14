.class public final Lcom/google/android/gms/internal/ads/zzdty$zzb;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzdty;",
        "Lcom/google/android/gms/internal/ads/zzdty$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdty;->zzawg()Lcom/google/android/gms/internal/ads/zzdty;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdtx;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdty$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdty$zza;)Lcom/google/android/gms/internal/ads/zzdty$zzb;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdty$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdty;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdty;->zza(Lcom/google/android/gms/internal/ads/zzdty;Lcom/google/android/gms/internal/ads/zzdty$zza;)V

    return-object p0
.end method

.method public final zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdty$zzb;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdty$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdty;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdty;->zza(Lcom/google/android/gms/internal/ads/zzdty;Ljava/lang/String;)V

    return-object p0
.end method
