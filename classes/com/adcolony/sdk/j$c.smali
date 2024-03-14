.class Lcom/adcolony/sdk/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/j;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/j;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/j$c;->a:Lcom/adcolony/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/j$c;->a:Lcom/adcolony/sdk/j;

    invoke-static {v0}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_66

    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 3
    :try_start_e
    iget-object v1, p0, Lcom/adcolony/sdk/j$c;->a:Lcom/adcolony/sdk/j;

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_55

    :catch_21
    move-exception v0

    .line 7
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": during WebView initialization."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v1, " Disabling AdColony."

    .line 9
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 10
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 11
    iget-object v0, p0, Lcom/adcolony/sdk/j$c;->a:Lcom/adcolony/sdk/j;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    .line 14
    :goto_55
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->j()Lcom/adcolony/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/j$c;->a:Lcom/adcolony/sdk/j;

    invoke-static {v1}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/m;->a(Ljava/lang/String;)V

    :cond_66
    return-void
.end method
