.class final synthetic Lcom/google/android/gms/internal/ads/zzcqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzfvc:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzfvc:Lcom/google/android/gms/internal/ads/zzatc;

    check-cast p1, Ljava/io/InputStream;

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdxi;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdvs;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzduc:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
