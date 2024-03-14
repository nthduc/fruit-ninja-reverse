.class public final Lcom/google/android/gms/internal/ads/zzdwo;
.super Lcom/google/android/gms/internal/ads/zzdwn;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwn<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwo;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 2

    .line 11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdwm;

    return-object p0
.end method

.method public final synthetic zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 2

    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    return-object p0
.end method

.method public final synthetic zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwm;->zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdwo;

    return-object p1
.end method

.method public final synthetic zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 2

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwm;

    return-object p0
.end method
