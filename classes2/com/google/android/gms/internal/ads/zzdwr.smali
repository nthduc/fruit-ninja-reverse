.class final Lcom/google/android/gms/internal/ads/zzdwr;
.super Lcom/google/android/gms/internal/ads/zzdwg;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwg<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zzhqo:Lcom/google/android/gms/internal/ads/zzdwp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwp;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwp;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdwg;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhqo:Lcom/google/android/gms/internal/ads/zzdwp;

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzhqo:Lcom/google/android/gms/internal/ads/zzdwp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdwp;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
