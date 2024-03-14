.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .registers 3

    .line 1080
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "s"

    .line 1084
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "d"

    if-eqz v2, :cond_31

    .line 1089
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "w"

    .line 1090
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1092
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1093
    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->query:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;
    invoke-static {v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v5

    # invokes: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)V
    invoke-static {v4, v2, v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)V

    .line 1097
    :cond_31
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-virtual {v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 1099
    iget-object v4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    if-ne v2, v4, :cond_72

    .line 1100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 1101
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;

    move-result-object v2

    # invokes: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    invoke-static {v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ListenQuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 1102
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1103
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 1105
    :cond_68
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$listen:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->resultCallback:Lcom/google/firebase/database/connection/RequestResultCallback;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method
