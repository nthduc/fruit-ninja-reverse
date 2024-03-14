.class final Lcom/google/android/gms/internal/ads/zzjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziu;


# instance fields
.field private final synthetic zzamv:Lcom/google/android/gms/internal/ads/zzjb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzjb;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzjb;Lcom/google/android/gms/internal/ads/zzja;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjd;-><init>(Lcom/google/android/gms/internal/ads/zzjb;)V

    return-void
.end method


# virtual methods
.method public final zzc(IJJ)V
    .registers 13

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjb;->zza(Lcom/google/android/gms/internal/ads/zzjb;)Lcom/google/android/gms/internal/ads/zzij;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzij;->zzb(IJJ)V

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzjb;->zza(IJJ)V

    return-void
.end method

.method public final zzen()V
    .registers 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzjb;->zzgd()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:Lcom/google/android/gms/internal/ads/zzjb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjb;->zza(Lcom/google/android/gms/internal/ads/zzjb;Z)Z

    return-void
.end method

.method public final zzx(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjd;->zzamv:Lcom/google/android/gms/internal/ads/zzjb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjb;->zza(Lcom/google/android/gms/internal/ads/zzjb;)Lcom/google/android/gms/internal/ads/zzij;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzij;->zzy(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjb;->zzx(I)V

    return-void
.end method
