.class Lcom/adcolony/sdk/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/j$a;->a(Lcom/adcolony/sdk/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/x;

.field final synthetic b:Lcom/adcolony/sdk/j$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/j$a;Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/j$a$a;->b:Lcom/adcolony/sdk/j$a;

    iput-object p2, p0, Lcom/adcolony/sdk/j$a$a;->a:Lcom/adcolony/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/j$a$a;->b:Lcom/adcolony/sdk/j$a;

    iget-object v0, v0, Lcom/adcolony/sdk/j$a;->a:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->f()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a

    .line 2
    new-instance v0, Lcom/adcolony/sdk/j$d;

    iget-object v1, p0, Lcom/adcolony/sdk/j$a$a;->a:Lcom/adcolony/sdk/x;

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/j$d;-><init>(Lcom/adcolony/sdk/x;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_50

    .line 4
    :cond_1a
    new-instance v0, Lcom/adcolony/sdk/j$d;

    iget-object v1, p0, Lcom/adcolony/sdk/j$a$a;->a:Lcom/adcolony/sdk/x;

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/j$d;-><init>(Lcom/adcolony/sdk/x;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_28} :catch_3d
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_50

    .line 16
    :catch_29
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "StackOverflowError on info AsyncTask execution, disabling AdColony"

    .line 17
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 18
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 19
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    goto :goto_50

    .line 20
    :catch_3d
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Error retrieving device info, disabling AdColony."

    .line 21
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 22
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 23
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    :goto_50
    return-void
.end method
