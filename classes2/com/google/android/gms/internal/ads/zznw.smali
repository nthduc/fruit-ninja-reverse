.class final Lcom/google/android/gms/internal/ads/zznw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzho;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zznt;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznw;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzho;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzho;

    .line 3
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzho;->zzagy:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzho;->zzagy:I

    sub-int/2addr p2, p1

    return p2
.end method
