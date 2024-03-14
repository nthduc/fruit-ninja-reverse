.class Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lcom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

.field final synthetic val$indexHtml:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->val$indexHtml:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Z)V
    .registers 4

    if-nez p1, :cond_1a

    .line 362
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v0, 0x1b

    # invokes: Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V
    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 364
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    const/16 v0, 0xa

    # invokes: Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V
    invoke-static {p1, v0}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$000(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V

    .line 365
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    # getter for: Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$600(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    return-void

    .line 368
    :cond_1a
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    # getter for: Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;->access$600(Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter$4;->val$indexHtml:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    return-void
.end method
