.class public Lcom/vungle/warren/ui/view/MRAIDAdView;
.super Lcom/vungle/warren/ui/view/BaseAdView;
.source "MRAIDAdView.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ui/view/BaseAdView<",
        "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
        ">;",
        "Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;"
    }
.end annotation


# instance fields
.field private presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/ui/view/FullAdWidget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/ui/OrientationDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/ui/CloseDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/ui/view/BaseAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/MRAIDAdView;->setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/vungle/warren/ui/view/MRAIDAdView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-void
.end method

.method public setVisibility(Z)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/vungle/warren/ui/view/MRAIDAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->setVisibility(I)V

    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/vungle/warren/ui/view/MRAIDAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->showWebsite(Ljava/lang/String;)V

    return-void
.end method

.method public updateWindow(Z)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/vungle/warren/ui/view/MRAIDAdView;->view:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->updateWindow(Z)V

    return-void
.end method
