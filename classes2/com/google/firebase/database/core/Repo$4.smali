.class Lcom/google/firebase/database/core/Repo$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/core/SyncTree$ListenProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->deferredInitialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$4;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V
    .registers 12

    .line 182
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$4;->this$0:Lcom/google/firebase/database/core/Repo;

    # getter for: Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;
    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v2

    .line 184
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v3

    if-eqz p2, :cond_21

    .line 186
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Tag;->getTagNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    move-object v5, p1

    new-instance v6, Lcom/google/firebase/database/core/Repo$4$1;

    invoke-direct {v6, p0, p4}, Lcom/google/firebase/database/core/Repo$4$1;-><init>(Lcom/google/firebase/database/core/Repo$4;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    move-object v4, p3

    .line 182
    invoke-interface/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnection;->listen(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/ListenHashProvider;Ljava/lang/Long;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V
    .registers 4

    .line 199
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$4;->this$0:Lcom/google/firebase/database/core/Repo;

    # getter for: Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;
    invoke-static {p2}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object p2

    .line 200
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object p1

    .line 199
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/database/connection/PersistentConnection;->unlisten(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
