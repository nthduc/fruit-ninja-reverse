.class Lcom/helpshift/util/concurrent/HandlerThreadExecutor$2;
.super Ljava/lang/Object;
.source "HandlerThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/util/concurrent/HandlerThreadExecutor;->awaitForSyncExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/util/concurrent/HandlerThreadExecutor;


# direct methods
.method constructor <init>(Lcom/helpshift/util/concurrent/HandlerThreadExecutor;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/helpshift/util/concurrent/HandlerThreadExecutor$2;->this$0:Lcom/helpshift/util/concurrent/HandlerThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
