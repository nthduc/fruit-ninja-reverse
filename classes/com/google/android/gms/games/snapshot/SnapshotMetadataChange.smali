.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    return-void
.end method


# virtual methods
.method public abstract getCoverImage()Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPlayedTimeMillis()Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getProgressValue()Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzdr()Lcom/google/android/gms/common/data/BitmapTeleporter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
