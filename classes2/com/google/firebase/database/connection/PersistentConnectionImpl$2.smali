.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .registers 3

    .line 684
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .registers 5
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

    .line 687
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    const-string v1, "d"

    .line 692
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    move-object v0, v2

    .line 694
    :goto_1c
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;->val$onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    if-eqz p1, :cond_23

    .line 695
    invoke-interface {p1, v0, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method
