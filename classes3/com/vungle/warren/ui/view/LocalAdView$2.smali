.class Lcom/vungle/warren/ui/view/LocalAdView$2;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/LocalAdView;->setupPlayerProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field duration:F

.field final synthetic this$0:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40000000    # -2.0f

    .line 184
    iput p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/LocalAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 192
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/LocalAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getCurrentVideoPosition()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v1, Lcom/vungle/warren/ui/view/LocalAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->getVideoDuration()I

    move-result v1

    if-lez v1, :cond_3b

    .line 196
    iget v2, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    const/high16 v3, -0x40000000    # -2.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_27

    int-to-float v1, v1

    .line 197
    iput v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    .line 200
    :cond_27
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->presenter:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    invoke-static {v1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v1

    iget v2, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    invoke-interface {v1, v0, v2}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onProgressUpdate(IF)V

    .line 201
    iget-object v1, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v1, Lcom/vungle/warren/ui/view/LocalAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget v2, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    invoke-virtual {v1, v0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->setProgress(IF)V

    .line 206
    :cond_3b
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$500(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_50

    .line 213
    :catch_47
    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lcom/vungle/warren/ui/view/LocalAdView;->TAG:Ljava/lang/String;

    const-string v1, "IllegalStateException while reporting progress indicates activity was killed via SIGKILL."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method
