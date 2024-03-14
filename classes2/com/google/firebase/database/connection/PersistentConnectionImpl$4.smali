.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

.field final synthetic val$put:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

.field final synthetic val$putId:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;JLcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .registers 7

    .line 1023
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    iput-object p5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$put:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    iput-object p6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    :cond_2e
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 1029
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$put:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    if-ne v0, v2, :cond_7c

    .line 1030
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    if-eqz v0, :cond_ab

    const-string v0, "s"

    .line 1033
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1035
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :cond_6e
    const-string v1, "d"

    .line 1037
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1038
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-interface {v1, v0, p1}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 1042
    :cond_7c
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 1043
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring on complete for put "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->val$putId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " because it was removed already."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    :cond_ab
    :goto_ab
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # invokes: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    return-void
.end method
