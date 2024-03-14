.class final synthetic Lcom/google/android/gms/internal/ads/zzcpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzgkb:Lcom/google/android/gms/internal/ads/zzalt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpr;->zzgkb:Lcom/google/android/gms/internal/ads/zzalt;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpr;->zzgkb:Lcom/google/android/gms/internal/ads/zzalt;

    check-cast p1, Lorg/json/JSONObject;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
