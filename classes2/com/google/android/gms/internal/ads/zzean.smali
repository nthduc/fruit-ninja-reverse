.class public final Lcom/google/android/gms/internal/ads/zzean;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzhuk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final zzhul:[B

.field private final zzhum:Lcom/google/android/gms/internal/ads/zzefc;

.field private final zzhun:Lcom/google/android/gms/internal/ads/zzefv;

.field private final zzhuo:I


# direct methods
.method constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/zzefc;Lcom/google/android/gms/internal/ads/zzefv;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/zzefc;",
            "Lcom/google/android/gms/internal/ads/zzefv;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhuk:Ljava/lang/Object;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhul:[B

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhum:Lcom/google/android/gms/internal/ads/zzefc;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhun:Lcom/google/android/gms/internal/ads/zzefv;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhuo:I

    return-void
.end method


# virtual methods
.method public final zzayt()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhuk:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzayu()Lcom/google/android/gms/internal/ads/zzefc;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhum:Lcom/google/android/gms/internal/ads/zzefc;

    return-object v0
.end method

.method public final zzayv()Lcom/google/android/gms/internal/ads/zzefv;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhun:Lcom/google/android/gms/internal/ads/zzefv;

    return-object v0
.end method

.method public final zzayw()[B
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzean;->zzhul:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 13
    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
