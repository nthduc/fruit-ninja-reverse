.class public final Lcom/google/android/gms/internal/ads/zzenc;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeku;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzeku;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zziny:Lcom/google/android/gms/internal/ads/zzeku;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeku;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zziny:Lcom/google/android/gms/internal/ads/zzeku;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzenc;)Lcom/google/android/gms/internal/ads/zzeku;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zziny:Lcom/google/android/gms/internal/ads/zzeku;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zziny:Lcom/google/android/gms/internal/ads/zzeku;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzeku;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzene;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzene;-><init>(Lcom/google/android/gms/internal/ads/zzenc;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzenb;-><init>(Lcom/google/android/gms/internal/ads/zzenc;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zziny:Lcom/google/android/gms/internal/ads/zzeku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeku;->size()I

    move-result v0

    return v0
.end method

.method public final zzaj(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzbhj()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zziny:Lcom/google/android/gms/internal/ads/zzeku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeku;->zzbhj()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbhk()Lcom/google/android/gms/internal/ads/zzeku;
    .registers 1

    return-object p0
.end method

.method public final zzhe(I)Ljava/lang/Object;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zziny:Lcom/google/android/gms/internal/ads/zzeku;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzeku;->zzhe(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
