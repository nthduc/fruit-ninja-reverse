.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .registers 2

    .line 1193
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v1, 0x0

    # setter for: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2602(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 1197
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # invokes: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->idleHasTimedOut()Z
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1198
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    goto :goto_1b

    .line 1200
    :cond_16
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    # invokes: Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    :goto_1b
    return-void
.end method
