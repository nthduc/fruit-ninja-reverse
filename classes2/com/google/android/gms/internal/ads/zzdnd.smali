.class final synthetic Lcom/google/android/gms/internal/ads/zzdnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlx;


# instance fields
.field private final zzhcp:Lcom/google/android/gms/internal/ads/zzdnb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzhcp:Lcom/google/android/gms/internal/ads/zzdnb;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->zzhcp:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnb;->zze(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzcjm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtq;

    return-object p1
.end method
