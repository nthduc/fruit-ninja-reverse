.class final Lcom/applovin/impl/adview/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/c;->a(Lcom/applovin/impl/sdk/network/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/network/g;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/network/g;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/c$6;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/applovin/impl/adview/c;->a()V

    iget-object v0, p0, Lcom/applovin/impl/adview/c$6;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c$6;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/applovin/impl/adview/c$6;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "al_firePostback(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\');"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->c()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_58

    :cond_40
    invoke-static {}, Lcom/applovin/impl/adview/c;->c()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_58
    return-void
.end method
