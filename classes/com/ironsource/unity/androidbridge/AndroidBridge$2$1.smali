.class Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;
.super Ljava/lang/Object;
.source "AndroidBridge.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/unity/androidbridge/AndroidBridge$2;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/AndroidBridge$2;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;->this$1:Lcom/ironsource/unity/androidbridge/AndroidBridge$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 373
    iget-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;->this$1:Lcom/ironsource/unity/androidbridge/AndroidBridge$2;

    iget-object p1, p1, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$200(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;->this$1:Lcom/ironsource/unity/androidbridge/AndroidBridge$2;

    iget-object p1, p1, Lcom/ironsource/unity/androidbridge/AndroidBridge$2;->this$0:Lcom/ironsource/unity/androidbridge/AndroidBridge;

    # getter for: Lcom/ironsource/unity/androidbridge/AndroidBridge;->mUIHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/AndroidBridge;->access$400(Lcom/ironsource/unity/androidbridge/AndroidBridge;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1$1;

    invoke-direct {p2, p0}, Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1$1;-><init>(Lcom/ironsource/unity/androidbridge/AndroidBridge$2$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    return-void
.end method
