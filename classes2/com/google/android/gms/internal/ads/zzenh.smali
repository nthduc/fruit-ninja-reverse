.class abstract Lcom/google/android/gms/internal/ads/zzenh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zzb(I[BII)I
.end method

.method abstract zzb(Ljava/lang/CharSequence;[BII)I
.end method

.method final zzm([BII)Z
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzenh;->zzb(I[BII)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method abstract zzo([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation
.end method
