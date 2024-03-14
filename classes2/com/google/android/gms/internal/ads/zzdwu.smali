.class final Lcom/google/android/gms/internal/ads/zzdwu;
.super Lcom/google/android/gms/internal/ads/zzdxg;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzhqu:Z

.field private final synthetic zzhqv:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzhqv:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxg;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzhqu:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzhqu:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzhqu:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzhqv:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
