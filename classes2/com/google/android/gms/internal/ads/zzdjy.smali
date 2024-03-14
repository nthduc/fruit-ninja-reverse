.class final synthetic Lcom/google/android/gms/internal/ads/zzdjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlx;


# instance fields
.field private final zzhak:Lcom/google/android/gms/internal/ads/zzdjw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjy;->zzhak:Lcom/google/android/gms/internal/ads/zzdjw;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjy;->zzhak:Lcom/google/android/gms/internal/ads/zzdjw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjw;->zzb(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object p1

    return-object p1
.end method
