.class Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment$3;
.super Ljava/lang/Object;
.source "ConversationSetupFragment.java"

# interfaces
.implements Lcom/helpshift/widget/HSObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;->addViewStateObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment$3;->this$0:Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 104
    check-cast p1, Lcom/helpshift/widget/BaseViewState;

    .line 105
    invoke-virtual {p1}, Lcom/helpshift/widget/BaseViewState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 106
    iget-object p1, p0, Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment$3;->this$0:Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;

    invoke-virtual {p1}, Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;->showNoInternetView()V

    goto :goto_13

    .line 109
    :cond_e
    iget-object p1, p0, Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment$3;->this$0:Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;

    invoke-virtual {p1}, Lcom/helpshift/support/conversations/usersetup/ConversationSetupFragment;->hideNoInternetView()V

    :goto_13
    return-void
.end method
