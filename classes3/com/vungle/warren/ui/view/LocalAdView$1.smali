.class Lcom/vungle/warren/ui/view/LocalAdView$1;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/LocalAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/LocalAdView;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_60

    const/4 v0, 0x2

    if-eq p1, v0, :cond_56

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10

    goto :goto_6a

    .line 141
    :cond_10
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->ctaClickAreaEnabled:Z
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$100(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 142
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->presenter:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_6a

    .line 129
    :cond_22
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->presenter:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onPrivacy()V

    goto :goto_6a

    .line 147
    :cond_2c
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$200(Lcom/vungle/warren/ui/view/LocalAdView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 148
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # invokes: Lcom/vungle/warren/ui/view/LocalAdView;->muteAudio()V
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$300(Lcom/vungle/warren/ui/view/LocalAdView;)V

    .line 149
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->presenter:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->muted:Z
    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$400(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMute(Z)V

    .line 150
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object p1, p1, Lcom/vungle/warren/ui/view/LocalAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->muted:Z
    invoke-static {v0}, Lcom/vungle/warren/ui/view/LocalAdView;->access$400(Lcom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->setMuted(Z)V

    goto :goto_6a

    .line 137
    :cond_56
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->presenter:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_6a

    .line 133
    :cond_60
    iget-object p1, p0, Lcom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lcom/vungle/warren/ui/view/LocalAdView;

    # getter for: Lcom/vungle/warren/ui/view/LocalAdView;->presenter:Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    invoke-static {p1}, Lcom/vungle/warren/ui/view/LocalAdView;->access$000(Lcom/vungle/warren/ui/view/LocalAdView;)Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->handleExit(Ljava/lang/String;)Z

    :cond_6a
    :goto_6a
    return-void
.end method
