.class public final Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzb$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzua$zzb$zza;",
        "Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;->zznh()Lcom/google/android/gms/internal/ads/zzua$zzb$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzuc;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza;Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zze$zza;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza;Lcom/google/android/gms/internal/ads/zzua$zzb$zze;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;)Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zza$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza;Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;)V

    return-object p0
.end method
