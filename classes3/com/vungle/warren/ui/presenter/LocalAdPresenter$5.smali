.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 540
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v1, 0x1

    # setter for: Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z
    invoke-static {v0, v1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$902(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    .line 541
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    # getter for: Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z
    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$600(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 542
    iget-object v0, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    # getter for: Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    invoke-static {v0}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$300(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCloseButton()V

    :cond_17
    return-void
.end method
