.class Lcom/vungle/warren/VungleApiClient$3;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/VungleApiClient;->initUserAgentLazy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleApiClient;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    # getter for: Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/vungle/warren/VungleApiClient;->access$300(Lcom/vungle/warren/VungleApiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleApiClient;->access$202(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    # getter for: Lcom/vungle/warren/VungleApiClient;->deviceBody:Lcom/google/gson/JsonObject;
    invoke-static {v0}, Lcom/vungle/warren/VungleApiClient;->access$400(Lcom/vungle/warren/VungleApiClient;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "ua"

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    # getter for: Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;
    invoke-static {v2}, Lcom/vungle/warren/VungleApiClient;->access$200(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient$3;->this$0:Lcom/vungle/warren/VungleApiClient;

    # getter for: Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;
    invoke-static {v1}, Lcom/vungle/warren/VungleApiClient;->access$200(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vungle/warren/VungleApiClient;->addUserAgentInCookie(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleApiClient;->access$500(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_49

    :catch_2c
    move-exception v0

    .line 450
    # getter for: Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method
