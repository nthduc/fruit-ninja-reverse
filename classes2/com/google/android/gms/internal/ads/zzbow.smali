.class final synthetic Lcom/google/android/gms/internal/ads/zzbow;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvs;


# instance fields
.field private final zzcyt:Landroid/content/Context;

.field private final zzfqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzfqo:Lcom/google/android/gms/internal/ads/zzdok;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdok;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzcyt:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfqo:Lcom/google/android/gms/internal/ads/zzdok;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzcyt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfqm:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzfqo:Lcom/google/android/gms/internal/ads/zzdok;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdw:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazu;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
