.class Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$9;
.super Ljava/lang/Object;
.source "SmartIntentRendererImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 281
    iput-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$9;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 285
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$9;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->lastViewState:Lcom/helpshift/conversation/smartintent/BaseSmartIntentViewState;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$500(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Lcom/helpshift/conversation/smartintent/BaseSmartIntentViewState;

    move-result-object p1

    instance-of p1, p1, Lcom/helpshift/conversation/smartintent/SmartIntentSearchResultViewState;

    if-eqz p1, :cond_13

    .line 286
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$9;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->router:Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$000(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRouter;->onSmartIntentBackButtonPressed()V

    .line 288
    :cond_13
    iget-object p1, p0, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl$9;->this$0:Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;

    # getter for: Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->editFieldView:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;->access$200(Lcom/helpshift/support/conversations/smartintent/SmartIntentRendererImpl;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
