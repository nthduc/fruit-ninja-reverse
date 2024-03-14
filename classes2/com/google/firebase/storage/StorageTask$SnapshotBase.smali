.class public Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Lcom/google/firebase/storage/StorageTask$ProvideError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotBase"
.end annotation


# instance fields
.field private final error:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V
    .registers 3
    .param p1    # Lcom/google/firebase/storage/StorageTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1138
    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->this$0:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2b

    .line 1140
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1142
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    goto :goto_2d

    .line 1143
    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_27

    .line 1145
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    goto :goto_2d

    :cond_27
    const/4 p1, 0x0

    .line 1147
    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    goto :goto_2d

    .line 1150
    :cond_2b
    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    :goto_2d
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getStorage()Lcom/google/firebase/storage/StorageReference;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/google/firebase/storage/StorageTask;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->this$0:Lcom/google/firebase/storage/StorageTask;

    return-object v0
.end method
