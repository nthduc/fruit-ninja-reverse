.class final Lcom/google/android/gms/games/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;->getSnapshotId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
