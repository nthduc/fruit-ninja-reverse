.class public final Lcom/google/android/gms/games/multiplayer/realtime/zzb;
.super Lcom/google/android/gms/common/data/EntityBuffer;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/EntityBuffer<",
        "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/EntityBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic getEntry(II)Ljava/lang/Object;
    .registers 5

    .line 5
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzb;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/zzf;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected final getPrimaryDataMarkerColumn()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    return-object v0
.end method
