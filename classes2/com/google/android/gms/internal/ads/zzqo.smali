.class public final Lcom/google/android/gms/internal/ads/zzqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbrb:Ljava/lang/String;

.field private final zzbrc:Lorg/json/JSONObject;

.field private final zzbrd:Ljava/lang/String;

.field private final zzbre:Ljava/lang/String;

.field private final zzbrf:Z

.field private final zzbrg:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbre:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrc:Lorg/json/JSONObject;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrd:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrb:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrf:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrg:Z

    return-void
.end method


# virtual methods
.method public final getUniqueId()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrd:Ljava/lang/String;

    return-object v0
.end method

.method public final isNative()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrg:Z

    return v0
.end method

.method public final zzlt()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlu()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbre:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlv()Lorg/json/JSONObject;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqo;->zzbrc:Lorg/json/JSONObject;

    return-object v0
.end method
