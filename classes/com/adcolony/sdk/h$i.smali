.class Lcom/adcolony/sdk/h$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/m0;

.field final synthetic b:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/m0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/h$i;->b:Lcom/adcolony/sdk/h;

    iput-object p2, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/adcolony/sdk/m0;->t()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 4
    iget-object v0, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/m0;->a(Z)V

    .line 6
    iget-object v0, p0, Lcom/adcolony/sdk/h$i;->a:Lcom/adcolony/sdk/m0;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_26
    return-void
.end method
