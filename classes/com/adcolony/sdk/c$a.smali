.class Lcom/adcolony/sdk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/adcolony/sdk/c;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/c;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/c$a;->b:Lcom/adcolony/sdk/c;

    iput-object p2, p0, Lcom/adcolony/sdk/c$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/c$a;->b:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->m:Z

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/c$a;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0xc8

    .line 4
    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_0

    :catch_11
    nop

    goto :goto_0

    :cond_13
    return-void
.end method
