.class Lcom/helpshift/support/conversations/ConversationalFragment$13;
.super Ljava/lang/Object;
.source "ConversationalFragment.java"

# interfaces
.implements Lcom/helpshift/widget/HSObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/ConversationalFragment;->addViewStateObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/ConversationalFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/ConversationalFragment;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/helpshift/support/conversations/ConversationalFragment$13;->this$0:Lcom/helpshift/support/conversations/ConversationalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 358
    check-cast p1, Lcom/helpshift/widget/BaseViewState;

    .line 359
    iget-object v0, p0, Lcom/helpshift/support/conversations/ConversationalFragment$13;->this$0:Lcom/helpshift/support/conversations/ConversationalFragment;

    iget-object v0, v0, Lcom/helpshift/support/conversations/ConversationalFragment;->renderer:Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;

    invoke-virtual {p1}, Lcom/helpshift/widget/BaseViewState;->isVisible()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/helpshift/support/conversations/ConversationalFragmentRenderer;->updateSmartIntentClearSearchButton(Z)V

    return-void
.end method
