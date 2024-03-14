.class public final Lcom/google/android/gms/internal/ads/zzqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final timestamp:J

.field public final zzaaq:I

.field public final zzbro:Z

.field private final zzbrr:Z

.field public final zzbrs:Z

.field public final zzbrt:Landroid/graphics/Rect;

.field public final zzbru:Landroid/graphics/Rect;

.field public final zzbrv:Landroid/graphics/Rect;

.field public final zzbrw:Z

.field public final zzbrx:Landroid/graphics/Rect;

.field public final zzbry:Z

.field public final zzbrz:Landroid/graphics/Rect;

.field private final zzbsa:F

.field public final zzbsb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZI",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "FZ",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqr;->timestamp:J

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrr:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrs:Z

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzaaq:I

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrt:Landroid/graphics/Rect;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrv:Landroid/graphics/Rect;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrw:Z

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrx:Landroid/graphics/Rect;

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbry:Z

    .line 12
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrz:Landroid/graphics/Rect;

    .line 13
    iput p13, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbsa:F

    .line 14
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    .line 15
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbsb:Ljava/util/List;

    return-void
.end method
