.class Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;
.super Lcom/helpshift/common/domain/F;
.source "NewConversationVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/conversation/viewmodel/NewConversationVM;->setWasSearchPerformed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

.field final synthetic val$searchPerformed:Z


# direct methods
.method constructor <init>(Lcom/helpshift/conversation/viewmodel/NewConversationVM;Z)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iput-boolean p2, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;->val$searchPerformed:Z

    invoke-direct {p0}, Lcom/helpshift/common/domain/F;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-boolean v1, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;->val$searchPerformed:Z

    iput-boolean v1, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->wasSearchPerformed:Z

    .line 124
    invoke-virtual {v0}, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->shouldShowSearchOnNewConversation()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    iget-object v0, p0, Lcom/helpshift/conversation/viewmodel/NewConversationVM$4;->this$0:Lcom/helpshift/conversation/viewmodel/NewConversationVM;

    iget-object v0, v0, Lcom/helpshift/conversation/viewmodel/NewConversationVM;->conversationController:Lcom/helpshift/conversation/domainmodel/ConversationController;

    invoke-virtual {v0}, Lcom/helpshift/conversation/domainmodel/ConversationController;->triggerFAQSearchIndexing()V

    :cond_13
    return-void
.end method
