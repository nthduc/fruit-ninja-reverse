.class final synthetic Lcom/google/android/gms/internal/ads/zzbbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbr;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzdgt:Ljava/lang/String;

.field private final zzdgw:Ljava/util/Map;

.field private final zzeej:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdgt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdgw:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzeej:[B

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/util/JsonWriter;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdgt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdgw:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzeej:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
