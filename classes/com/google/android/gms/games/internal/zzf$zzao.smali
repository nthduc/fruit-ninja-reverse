.class final Lcom/google/android/gms/games/internal/zzf$zzao;
.super Lcom/google/android/gms/games/internal/zzf$zzl;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzao"
.end annotation


# instance fields
.field private final zzek:Ljava/lang/String;

.field private final zzin:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzio:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final zzip:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf$zzao;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 11

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$zzl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 5
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 6
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzin:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 7
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzio:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_71

    .line 8
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_43

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result p1

    const/16 p4, 0xfa4

    if-eq p1, p4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    .line 10
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 11
    new-instance p4, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p4, p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzin:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 12
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzio:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_71

    .line 14
    :cond_43
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 15
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v2, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzin:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 16
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 17
    new-instance p3, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v1, p4}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzio:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_7e

    .line 18
    :goto_71
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzek:Ljava/lang/String;

    .line 23
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {p1, p5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzip:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void

    :catchall_7e
    move-exception p1

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    .line 21
    throw p1
.end method


# virtual methods
.method public final getConflictId()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzek:Ljava/lang/String;

    return-object v0
.end method

.method public final getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzio:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

.method public final getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzip:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-object v0
.end method

.method public final getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzao;->zzin:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method
