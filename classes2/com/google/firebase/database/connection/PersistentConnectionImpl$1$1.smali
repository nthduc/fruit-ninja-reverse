.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

.field final synthetic val$thisGetTokenAttempt:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;J)V
    .registers 4

    .line 614
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iput-wide p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->val$thisGetTokenAttempt:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 8

    .line 641
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v2, v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J
    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_3e

    .line 642
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    # setter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$502(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 643
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # invokes: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    goto :goto_4d

    .line 646
    :cond_3e
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Ignoring getToken error, because this was not the latest attempt."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4d
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 8

    .line 617
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v2, v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J
    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_63

    .line 620
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_32

    .line 621
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Successfully fetched token, opening connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->openNetworkConnection(Ljava/lang/String;)V

    goto :goto_72

    .line 624
    :cond_32
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 625
    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_41

    const/4 p1, 0x1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object v1, v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 627
    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Expected connection state disconnected, but was %s"

    .line 624
    invoke-static {p1, v1, v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 628
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Not opening connection after token refresh, because connection was set to disconnected"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_72

    .line 633
    :cond_63
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # getter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Ignoring getToken result, because this was not the latest attempt."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_72
    return-void
.end method
