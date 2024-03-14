.class public final Lcom/google/android/gms/internal/ads/zzama;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zzdio:Lcom/google/android/gms/internal/ads/zzalx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalx<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzdip:Lcom/google/android/gms/internal/ads/zzalv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalv<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzama;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzama;->zzdio:Lcom/google/android/gms/internal/ads/zzalx;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalz;->zzdin:Lcom/google/android/gms/internal/ads/zzalv;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzama;->zzdip:Lcom/google/android/gms/internal/ads/zzalv;

    return-void
.end method

.method static final synthetic zze(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzama;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
