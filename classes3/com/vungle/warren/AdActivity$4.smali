.class Lcom/vungle/warren/AdActivity$4;
.super Ljava/lang/Object;
.source "AdActivity.java"

# interfaces
.implements Lcom/vungle/warren/PresentationFactory$FullScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdActivity;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V
    .registers 4
    .param p1    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/error/VungleException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/vungle/warren/ui/contract/AdContract$AdView;",
            "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
            ">;",
            "Lcom/vungle/warren/error/VungleException;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_41

    if-eqz p2, :cond_5

    goto :goto_41

    .line 336
    :cond_5
    iget-object p2, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    # setter for: Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    invoke-static {p2, v0}, Lcom/vungle/warren/AdActivity;->access$002(Lcom/vungle/warren/AdActivity;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 337
    iget-object p2, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    # getter for: Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    invoke-static {p2}, Lcom/vungle/warren/AdActivity;->access$000(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    # getter for: Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    invoke-static {}, Lcom/vungle/warren/AdActivity;->access$400()Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 339
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/ui/contract/AdContract$AdView;

    .line 341
    iget-object p2, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    # getter for: Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    invoke-static {p2}, Lcom/vungle/warren/AdActivity;->access$000(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    # getter for: Lcom/vungle/warren/AdActivity;->state:Lcom/vungle/warren/ui/state/OptionsState;
    invoke-static {v0}, Lcom/vungle/warren/AdActivity;->access$500(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/state/OptionsState;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->attach(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/state/OptionsState;)V

    .line 343
    iget-object p1, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    # getter for: Lcom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/vungle/warren/AdActivity;->access$600(Lcom/vungle/warren/AdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 344
    iget-object p1, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    # invokes: Lcom/vungle/warren/AdActivity;->start()V
    invoke-static {p1}, Lcom/vungle/warren/AdActivity;->access$700(Lcom/vungle/warren/AdActivity;)V

    :cond_40
    return-void

    .line 330
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    const/4 p2, 0x0

    # setter for: Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;
    invoke-static {p1, p2}, Lcom/vungle/warren/AdActivity;->access$102(Lcom/vungle/warren/AdActivity;Lcom/vungle/warren/PresentationFactory;)Lcom/vungle/warren/PresentationFactory;

    .line 331
    iget-object p1, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    const/16 p2, 0xa

    # getter for: Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;
    invoke-static {p1}, Lcom/vungle/warren/AdActivity;->access$200(Lcom/vungle/warren/AdActivity;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/vungle/warren/AdActivity;->deliverError(ILjava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/vungle/warren/AdActivity;->access$300(Lcom/vungle/warren/AdActivity;ILjava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/vungle/warren/AdActivity$4;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-virtual {p1}, Lcom/vungle/warren/AdActivity;->finish()V

    return-void
.end method
