.class Lcom/google/firebase/storage/StorageReference$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/StorageReference;->listAll()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Lcom/google/firebase/storage/ListResult;",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/storage/StorageReference;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic val$prefixes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 6

    .line 615
    iput-object p1, p0, Lcom/google/firebase/storage/StorageReference$4;->this$0:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$prefixes:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/storage/StorageReference$4;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/storage/StorageReference$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/firebase/storage/StorageReference$4;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/storage/ListResult;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 618
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 619
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/storage/ListResult;

    .line 620
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference$4;->val$prefixes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/firebase/storage/ListResult;->getPrefixes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference$4;->val$items:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/firebase/storage/ListResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    invoke-virtual {p1}, Lcom/google/firebase/storage/ListResult;->getPageToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 624
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference$4;->this$0:Lcom/google/firebase/storage/StorageReference;

    .line 625
    invoke-virtual {p1}, Lcom/google/firebase/storage/ListResult;->getPageToken()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/google/firebase/storage/StorageReference;->listHelper(Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    invoke-static {v0, v1, p1}, Lcom/google/firebase/storage/StorageReference;->access$000(Lcom/google/firebase/storage/StorageReference;Ljava/lang/Integer;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 626
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    goto :goto_4d

    .line 628
    :cond_35
    iget-object p1, p0, Lcom/google/firebase/storage/StorageReference$4;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/firebase/storage/ListResult;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageReference$4;->val$prefixes:Ljava/util/List;

    iget-object v3, p0, Lcom/google/firebase/storage/StorageReference$4;->val$items:Ljava/util/List;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/storage/ListResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_4d

    .line 631
    :cond_44
    iget-object v0, p0, Lcom/google/firebase/storage/StorageReference$4;->val$pendingResult:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 634
    :goto_4d
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageReference$4;->then(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
