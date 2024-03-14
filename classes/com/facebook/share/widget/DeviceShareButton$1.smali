.class Lcom/facebook/share/widget/DeviceShareButton$1;
.super Ljava/lang/Object;
.source "DeviceShareButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/DeviceShareButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/DeviceShareButton;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/DeviceShareButton;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton$1;->this$0:Lcom/facebook/share/widget/DeviceShareButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 165
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton$1;->this$0:Lcom/facebook/share/widget/DeviceShareButton;

    # invokes: Lcom/facebook/share/widget/DeviceShareButton;->callExternalOnClickListener(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->access$000(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V

    .line 166
    iget-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton$1;->this$0:Lcom/facebook/share/widget/DeviceShareButton;

    # invokes: Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;
    invoke-static {p1}, Lcom/facebook/share/widget/DeviceShareButton;->access$100(Lcom/facebook/share/widget/DeviceShareButton;)Lcom/facebook/share/DeviceShareDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton$1;->this$0:Lcom/facebook/share/widget/DeviceShareButton;

    invoke-virtual {v0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/DeviceShareDialog;->show(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p1

    .line 167
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
