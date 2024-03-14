.class final synthetic Lcom/google/android/gms/internal/ads/zzbev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzol;


# instance fields
.field private final zzela:Lcom/google/android/gms/internal/ads/zzber;

.field private final zzelc:Lcom/google/android/gms/internal/ads/zzol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzber;Lcom/google/android/gms/internal/ads/zzol;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzela:Lcom/google/android/gms/internal/ads/zzber;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzelc:Lcom/google/android/gms/internal/ads/zzol;

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzom;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzela:Lcom/google/android/gms/internal/ads/zzber;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzelc:Lcom/google/android/gms/internal/ads/zzol;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzber;->zza(Lcom/google/android/gms/internal/ads/zzol;)Lcom/google/android/gms/internal/ads/zzom;

    move-result-object v0

    return-object v0
.end method
