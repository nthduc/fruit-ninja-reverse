.class final synthetic Lcom/google/android/gms/internal/ads/zzbet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzol;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzela:Lcom/google/android/gms/internal/ads/zzber;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzber;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzela:Lcom/google/android/gms/internal/ads/zzber;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzdgm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzip()Lcom/google/android/gms/internal/ads/zzom;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzela:Lcom/google/android/gms/internal/ads/zzber;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzdgm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzber;->zzfm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzom;

    move-result-object v0

    return-object v0
.end method
