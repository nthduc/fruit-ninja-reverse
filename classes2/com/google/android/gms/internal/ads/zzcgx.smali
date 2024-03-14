.class final synthetic Lcom/google/android/gms/internal/ads/zzcgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzfnx:Lorg/json/JSONObject;

.field private final zzgdo:Lcom/google/android/gms/internal/ads/zzcgw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgw;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzgdo:Lcom/google/android/gms/internal/ads/zzcgw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzfnx:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzgdo:Lcom/google/android/gms/internal/ads/zzcgw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgx;->zzfnx:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgw;->zza(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object p1

    return-object p1
.end method
