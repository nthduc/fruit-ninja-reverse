.class final synthetic Lcom/google/android/gms/internal/ads/zzcin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzgek:Lcom/google/android/gms/internal/ads/zzcil;

.field private final zzgel:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzgek:Lcom/google/android/gms/internal/ads/zzcil;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzgel:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzgek:Lcom/google/android/gms/internal/ads/zzcil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcin;->zzgel:Lorg/json/JSONObject;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbgj;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
