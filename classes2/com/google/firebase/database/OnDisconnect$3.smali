.class Lcom/google/firebase/database/OnDisconnect$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/OnDisconnect;->cancelInternal(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/OnDisconnect;

.field final synthetic val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/firebase/database/core/utilities/Pair;)V
    .registers 3

    .line 264
    iput-object p1, p0, Lcom/google/firebase/database/OnDisconnect$3;->this$0:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/OnDisconnect$3;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect$3;->this$0:Lcom/google/firebase/database/OnDisconnect;

    # getter for: Lcom/google/firebase/database/OnDisconnect;->repo:Lcom/google/firebase/database/core/Repo;
    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->access$100(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/OnDisconnect$3;->this$0:Lcom/google/firebase/database/OnDisconnect;

    # getter for: Lcom/google/firebase/database/OnDisconnect;->path:Lcom/google/firebase/database/core/Path;
    invoke-static {v1}, Lcom/google/firebase/database/OnDisconnect;->access$000(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/OnDisconnect$3;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/core/Repo;->onDisconnectCancel(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
