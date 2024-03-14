.class Lcom/ironsource/eventsTracker/EventsTracker$1;
.super Ljava/lang/Object;
.source "EventsTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/eventsTracker/EventsTracker;->logEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/eventsTracker/EventsTracker;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/eventsTracker/EventsTracker;Ljava/lang/String;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    iput-object p2, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 70
    :try_start_0
    new-instance v0, Lcom/ironsource/network/Response;

    invoke-direct {v0}, Lcom/ironsource/network/Response;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    # getter for: Lcom/ironsource/eventsTracker/EventsTracker;->_configuration:Lcom/ironsource/eventsTracker/EventsConfiguration;
    invoke-static {v1}, Lcom/ironsource/eventsTracker/EventsTracker;->access$000(Lcom/ironsource/eventsTracker/EventsTracker;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/eventsTracker/EventsConfiguration;->getHeaders()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "POST"

    .line 72
    iget-object v3, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    # getter for: Lcom/ironsource/eventsTracker/EventsTracker;->_configuration:Lcom/ironsource/eventsTracker/EventsConfiguration;
    invoke-static {v3}, Lcom/ironsource/eventsTracker/EventsTracker;->access$000(Lcom/ironsource/eventsTracker/EventsTracker;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/eventsTracker/EventsConfiguration;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 73
    iget-object v0, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    # getter for: Lcom/ironsource/eventsTracker/EventsTracker;->_configuration:Lcom/ironsource/eventsTracker/EventsConfiguration;
    invoke-static {v0}, Lcom/ironsource/eventsTracker/EventsTracker;->access$000(Lcom/ironsource/eventsTracker/EventsTracker;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/eventsTracker/EventsConfiguration;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->val$data:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/network/ISHttpService;->sendPOSTRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/network/Response;

    move-result-object v0

    goto :goto_54

    :cond_32
    const-string v2, "GET"

    .line 75
    iget-object v3, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    # getter for: Lcom/ironsource/eventsTracker/EventsTracker;->_configuration:Lcom/ironsource/eventsTracker/EventsConfiguration;
    invoke-static {v3}, Lcom/ironsource/eventsTracker/EventsTracker;->access$000(Lcom/ironsource/eventsTracker/EventsTracker;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/eventsTracker/EventsConfiguration;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 76
    iget-object v0, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    # getter for: Lcom/ironsource/eventsTracker/EventsTracker;->_configuration:Lcom/ironsource/eventsTracker/EventsConfiguration;
    invoke-static {v0}, Lcom/ironsource/eventsTracker/EventsTracker;->access$000(Lcom/ironsource/eventsTracker/EventsTracker;)Lcom/ironsource/eventsTracker/EventsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/eventsTracker/EventsConfiguration;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->val$data:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/network/ISHttpService;->sendGETRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/network/Response;

    move-result-object v0

    .line 79
    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/ironsource/eventsTracker/EventsTracker$1;->this$0:Lcom/ironsource/eventsTracker/EventsTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/ironsource/network/Response;->responseCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ironsource/eventsTracker/EventsTracker;->logConsole(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/ironsource/eventsTracker/EventsTracker;->access$100(Lcom/ironsource/eventsTracker/EventsTracker;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_71
    return-void
.end method
