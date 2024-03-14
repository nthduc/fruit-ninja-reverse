.class Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$4;
.super Ljava/lang/Object;
.source "SmartIntentRendererImpl.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->registerViewListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$4;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_d

    .line 236
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$4;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->router:Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$000(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;->onSmartIntentSendButtonClick()V

    goto :goto_28

    :cond_d
    const/4 p1, 0x3

    if-ne p2, p1, :cond_28

    .line 239
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$4;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->router:Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$000(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;

    move-result-object p1

    iget-object p2, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$4;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->editFieldView:Landroid/widget/EditText;
    invoke-static {p2}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$200(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;->onSmartIntentTextChanged(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$4;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # invokes: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->hideKeyboard()V
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$300(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)V

    :cond_28
    :goto_28
    const/4 p1, 0x0

    return p1
.end method
