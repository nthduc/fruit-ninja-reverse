.class Lcom/ironsource/sdk/controller/ControllerView$1;
.super Ljava/lang/Object;
.source "ControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerView;->addViewToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerView;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView$1;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView$1;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    # invokes: Lcom/ironsource/sdk/controller/ControllerView;->getWindowDecorViewGroup()Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerView;->access$000(Lcom/ironsource/sdk/controller/ControllerView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 83
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView$1;->this$0:Lcom/ironsource/sdk/controller/ControllerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    return-void
.end method
