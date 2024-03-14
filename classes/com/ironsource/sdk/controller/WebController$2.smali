.class Lcom/ironsource/sdk/controller/WebController$2;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/WebViewMessagingMediator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$2;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$2;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 340
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController$2;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {p2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    return-void
.end method
