.class Lcom/adcolony/sdk/h$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h$g;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/h$g$a;->a:Lcom/adcolony/sdk/h$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->u()Lcom/adcolony/sdk/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/f0;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h$g$a;->a:Lcom/adcolony/sdk/h$g;

    iget-object v0, v0, Lcom/adcolony/sdk/h$g;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->e(Lcom/adcolony/sdk/h;)V

    :cond_15
    return-void
.end method
