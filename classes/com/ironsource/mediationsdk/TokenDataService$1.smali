.class Lcom/ironsource/mediationsdk/TokenDataService$1;
.super Ljava/lang/Object;
.source "TokenDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/TokenDataService;->collectAdvertisingData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/TokenDataService;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/TokenDataService;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/ironsource/mediationsdk/TokenDataService$1;->this$0:Lcom/ironsource/mediationsdk/TokenDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/TokenDataService$1;->this$0:Lcom/ironsource/mediationsdk/TokenDataService;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/TokenDataService$1;->this$0:Lcom/ironsource/mediationsdk/TokenDataService;

    # invokes: Lcom/ironsource/mediationsdk/TokenDataService;->fetchAdvertisingId()Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/TokenDataService;->access$000(Lcom/ironsource/mediationsdk/TokenDataService;)Lorg/json/JSONObject;

    move-result-object v1

    # invokes: Lcom/ironsource/mediationsdk/TokenDataService;->updateTokenData(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/TokenDataService;->access$100(Lcom/ironsource/mediationsdk/TokenDataService;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    return-void
.end method
