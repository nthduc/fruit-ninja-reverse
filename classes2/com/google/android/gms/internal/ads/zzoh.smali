.class public final Lcom/google/android/gms/internal/ads/zzoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final data:[B

.field private final offset:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoh;->offset:I

    return-void
.end method


# virtual methods
.method public final zzbh(I)I
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoh;->offset:I

    add-int/2addr v0, p1

    return v0
.end method
