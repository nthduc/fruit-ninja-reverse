.class Lcom/ironsource/sdk/controller/WebController$10;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;

.field final synthetic val$scriptBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 2972
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, " "

    .line 2974
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    :try_start_d
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$5700(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 2978
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$5700(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2979
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->evaluateJavascriptKitKat(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    goto/16 :goto_fb

    .line 2981
    :cond_2e
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_fb

    .line 2984
    :cond_37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_39} :catch_ce

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-lt v1, v2, :cond_bd

    .line 2987
    :try_start_3e
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->evaluateJavascriptKitKat(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$5800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    .line 2988
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$5702(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_53
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3e .. :try_end_53} :catch_89
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_53} :catch_55

    goto/16 :goto_fb

    :catch_55
    move-exception v1

    .line 2994
    :try_start_56
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evaluateJavascrip Exception: SDK version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5702(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_fb

    :catch_89
    move-exception v1

    .line 2990
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evaluateJavascrip NoSuchMethodError: SDK version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2991
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V

    .line 2992
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5702(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_fb

    .line 3000
    :cond_bd
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V

    .line 3001
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5702(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_cd} :catch_ce

    goto :goto_fb

    :catch_ce
    move-exception v0

    .line 3005
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$10;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectJavascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const-string v1, "https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_fb
    return-void
.end method
