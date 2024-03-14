.class Lcom/vungle/warren/ServiceLocator$2;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 119
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$2;->this$0:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/tasks/JobCreator;
    .registers 10

    .line 122
    new-instance v8, Lcom/vungle/warren/tasks/VungleJobCreator;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    .line 123
    # invokes: Lcom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/persistence/Designer;

    .line 124
    # invokes: Lcom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vungle/warren/persistence/Designer;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/VungleApiClient;

    .line 125
    # invokes: Lcom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vungle/warren/VungleApiClient;

    new-instance v4, Lcom/vungle/warren/analytics/VungleAnalytics;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/VungleApiClient;

    .line 126
    # invokes: Lcom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleApiClient;

    invoke-direct {v4, v0}, Lcom/vungle/warren/analytics/VungleAnalytics;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    .line 127
    # getter for: Lcom/vungle/warren/ServiceLocator;->RECONFIG_CALL:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    invoke-static {}, Lcom/vungle/warren/ServiceLocator;->access$200()Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    move-result-object v5

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v6, Lcom/vungle/warren/AdLoader;

    .line 128
    # invokes: Lcom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v6}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/warren/AdLoader;

    sget-object v7, Lcom/vungle/warren/ServiceLocator;->VUNGLE_STATIC_API:Lcom/vungle/warren/VungleStaticApi;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/vungle/warren/tasks/VungleJobCreator;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;)V

    return-object v8
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$2;->create()Lcom/vungle/warren/tasks/JobCreator;

    move-result-object v0

    return-object v0
.end method
