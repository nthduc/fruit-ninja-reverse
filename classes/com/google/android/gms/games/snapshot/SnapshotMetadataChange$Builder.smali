.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private zzre:Ljava/lang/Long;

.field private zzrf:Ljava/lang/Long;

.field private zzrg:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private zzrh:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .registers 8

    .line 20
    new-instance v6, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzre:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrg:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrh:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrf:Ljava/lang/Long;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v6
.end method

.method public final fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 8

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->description:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzre:Ljava/lang/Long;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrf:Ljava/lang/Long;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzre:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_29

    .line 15
    iput-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzre:Ljava/lang/Long;

    .line 16
    :cond_29
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrh:Landroid/net/Uri;

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrh:Landroid/net/Uri;

    if-eqz p1, :cond_35

    .line 18
    iput-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrg:Lcom/google/android/gms/common/data/BitmapTeleporter;

    :cond_35
    return-object p0
.end method

.method public final setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    .line 8
    new-instance v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrg:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrh:Landroid/net/Uri;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzre:Ljava/lang/Long;

    return-object p0
.end method

.method public final setProgressValue(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzrf:Ljava/lang/Long;

    return-object p0
.end method
