.class public final Lcom/google/android/gms/internal/ads/zznx;
.super Lcom/google/android/gms/internal/ads/zznu;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzbfx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznq;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;-><init>(Lcom/google/android/gms/internal/ads/zznq;IILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zznq;IILjava/lang/Object;)V
    .registers 5

    const/4 p3, 0x1

    .line 3
    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p2, p3, p4

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zznu;-><init>(Lcom/google/android/gms/internal/ads/zznq;[I)V

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zznx;->zzbfx:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznx;->data:Ljava/lang/Object;

    return-void
.end method
