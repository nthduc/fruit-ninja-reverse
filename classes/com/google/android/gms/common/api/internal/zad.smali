.class public abstract Lcom/google/android/gms/common/api/internal/zad;
.super Lcom/google/android/gms/common/api/internal/zab;
.source "com.google.android.gms:play-services-base@@17.2.1"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract zac(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)[Lcom/google/android/gms/common/Feature;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation
.end method

.method public abstract zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)Z"
        }
    .end annotation
.end method
