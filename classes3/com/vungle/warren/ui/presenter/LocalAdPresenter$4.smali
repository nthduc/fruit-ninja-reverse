.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showIncetivizedDialog()V
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

    .line 474
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_10

    .line 480
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 p2, 0x0

    const-string v0, "video_close"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$4;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    # invokes: Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V
    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$800(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    :cond_10
    return-void
.end method
