.class Lcom/helpshift/support/conversations/NewConversationFragment$6;
.super Ljava/lang/Object;
.source "NewConversationFragment.java"

# interfaces
.implements Lcom/helpshift/widget/HSObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/NewConversationFragment;->addViewStateObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/NewConversationFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/NewConversationFragment;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/helpshift/support/conversations/NewConversationFragment$6;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4

    .line 154
    check-cast p1, Lcom/helpshift/widget/TextViewState;

    .line 155
    iget-object v0, p0, Lcom/helpshift/support/conversations/NewConversationFragment$6;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    # getter for: Lcom/helpshift/support/conversations/NewConversationFragment;->renderer:Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;
    invoke-static {v0}, Lcom/helpshift/support/conversations/NewConversationFragment;->access$000(Lcom/helpshift/support/conversations/NewConversationFragment;)Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpshift/widget/TextViewState;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;->setName(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/helpshift/support/conversations/NewConversationFragment$6;->this$0:Lcom/helpshift/support/conversations/NewConversationFragment;

    # getter for: Lcom/helpshift/support/conversations/NewConversationFragment;->renderer:Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;
    invoke-static {v0}, Lcom/helpshift/support/conversations/NewConversationFragment;->access$000(Lcom/helpshift/support/conversations/NewConversationFragment;)Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpshift/widget/TextViewState;->getError()Lcom/helpshift/widget/TextViewState$TextViewStatesError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpshift/support/conversations/NewConversationFragmentRenderer;->updateNameErrorState(Lcom/helpshift/widget/TextViewState$TextViewStatesError;)V

    return-void
.end method
