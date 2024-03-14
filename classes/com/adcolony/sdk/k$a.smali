.class Lcom/adcolony/sdk/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/k;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/k$a;->a:Lcom/adcolony/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_f

    goto :goto_27

    .line 7
    :cond_f
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "on_resume"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8
    iget-object v0, p0, Lcom/adcolony/sdk/k$a;->a:Lcom/adcolony/sdk/k;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/k;Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;

    goto :goto_26

    .line 10
    :cond_21
    iget-object v0, p0, Lcom/adcolony/sdk/k$a;->a:Lcom/adcolony/sdk/k;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/k;->b(Lcom/adcolony/sdk/k;Lcom/adcolony/sdk/x;)V

    :goto_26
    return-void

    .line 11
    :cond_27
    :goto_27
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Missing Activity reference, can\'t build AlertDialog."

    .line 12
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 13
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-void
.end method
