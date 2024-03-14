.class Lcom/vungle/warren/ServiceLocator$15;
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

    .line 250
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$15;->this$0:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/VisionController;
    .registers 4

    .line 253
    new-instance v0, Lcom/vungle/warren/VisionController;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$15;->this$0:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/persistence/Repository;

    # invokes: Lcom/vungle/warren/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/vungle/warren/ServiceLocator;->access$100(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$15;->this$0:Lcom/vungle/warren/ServiceLocator;

    # getter for: Lcom/vungle/warren/ServiceLocator;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->access$300(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/VisionController;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/NetworkProvider;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 250
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$15;->create()Lcom/vungle/warren/VisionController;

    move-result-object v0

    return-object v0
.end method
