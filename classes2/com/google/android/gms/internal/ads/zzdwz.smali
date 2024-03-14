.class final Lcom/google/android/gms/internal/ads/zzdwz;
.super Lcom/google/android/gms/internal/ads/zzdwp;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwp<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zzhra:Lcom/google/android/gms/internal/ads/zzdwp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient size:I

.field private final transient zzhrb:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwz;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhra:Lcom/google/android/gms/internal/ads/zzdwp;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhrb:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwd;->zzs(II)I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhrb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 6

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhrb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method final zzaxj()[Ljava/lang/Object;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->zzhrb:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzaxk()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzaxl()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->size:I

    return v0
.end method

.method final zzaxn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
