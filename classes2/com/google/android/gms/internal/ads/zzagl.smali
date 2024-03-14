.class final Lcom/google/android/gms/internal/ads/zzagl;
.super Lcom/google/android/gms/internal/ads/zzafo;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final synthetic zzdeg:Lcom/google/android/gms/internal/ads/zzagk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzagk;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagl;->zzdeg:Lcom/google/android/gms/internal/ads/zzagk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagj;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagl;-><init>(Lcom/google/android/gms/internal/ads/zzagk;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafa;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagl;->zzdeg:Lcom/google/android/gms/internal/ads/zzagk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->zza(Lcom/google/android/gms/internal/ads/zzagk;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagl;->zzdeg:Lcom/google/android/gms/internal/ads/zzagk;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzagk;->zza(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzafa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
