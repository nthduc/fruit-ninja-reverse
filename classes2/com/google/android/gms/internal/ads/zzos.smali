.class public Lcom/google/android/gms/internal/ads/zzos;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final type:I

.field private final zzbio:Lcom/google/android/gms/internal/ads/zzon;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbio:Lcom/google/android/gms/internal/ads/zzon;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzos;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzon;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbio:Lcom/google/android/gms/internal/ads/zzon;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzos;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V
    .registers 5

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbio:Lcom/google/android/gms/internal/ads/zzon;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzos;->type:I

    return-void
.end method
