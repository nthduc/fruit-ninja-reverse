.class final Lcom/google/android/gms/internal/ads/zzbff;
.super Lcom/google/android/gms/internal/ads/zzbm;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field static final zzelj:Lcom/google/android/gms/internal/ads/zzbff;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbff;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbff;->zzelj:Lcom/google/android/gms/internal/ads/zzbff;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbp;
    .registers 4

    const-string p2, "moov"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbr;-><init>()V

    return-object p1

    :cond_e
    const-string p2, "mvhd"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    return-object p1

    .line 6
    :cond_1c
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbt;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
