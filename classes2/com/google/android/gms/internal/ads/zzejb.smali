.class final Lcom/google/android/gms/internal/ads/zzejb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeiv;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeio;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj([BII)[B
    .registers 6

    .line 2
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
