.class public abstract Lcom/google/android/gms/drive/events/OpenFileCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onContents(Lcom/google/android/gms/drive/DriveContents;)V
    .param p1    # Lcom/google/android/gms/drive/DriveContents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onError(Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onProgress(JJ)V
.end method
